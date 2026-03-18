# <img src="assets/logo.png" alt="Logo" width="3%"> CangjieBench: Evaluating LLM Generalization on a New Low-Resource General-Purpose Language

<p align="center">
    <img src="assets/cangjie_challenge.png" alt="Cangjie Challenge" width="50%">
</p>

<p align="center">
    <img alt="Cangjie Lang" src="https://img.shields.io/badge/Cangjie_Lang.-1.0.0-blue">
    <img alt="cjc" src="https://img.shields.io/badge/cjc-v1.0.0-brightgreen">
    <a href="https://arxiv.org/abs/2603.14501"><img alt="arXiv" src="https://img.shields.io/badge/arXiv-2603.14501-b31b1b.svg"></a>
    <img alt="dataset" src="https://img.shields.io/badge/dataset-open-purple">
    <img alt="License" src="https://img.shields.io/badge/License-Apache%202.0-orange.svg">
    <!-- <img alt="Venue" src="https://img.shields.io/badge/ACL-2026-red"> -->
</p>

<p align="center">If you like our project, please give it a star ⭐ to show your support! Thank you :)</p>

<h4 align="center">
    <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a> &nbsp;|&nbsp; <a href="./README.md"><strong>🌐 English</strong></a>
</h4>

---

## Table of Contents

- [What is Cangjie?](#-what-is-cangjie)
- [Quickstart](#-quickstart)
- [Usage & Evaluation](#%EF%B8%8F-usage--evaluation)
- [Overview of Our Report](#-overview-of-our-report)
- [Results](#-results)
- [Checklist](#-checklist)

---

## 🤔 What is Cangjie?

**Cangjie** (designed by [Huawei](https://www.huawei.com/en/)) is a next-generation programming language designed for all-scenario intelligence. It features native AI support, innate all-scenario versatility, high performance, and robust security. Cangjie is suitable for application development across diverse device-cloud environments, providing developers with an exceptional programming experience.

| Resource | Description |
|:--|:--|
| [Cangjie Official Website](https://cangjie-lang.cn/en) | Documentation, tutorials, and community support |
| [Cangjie Homepage (HarmonyOS)](https://developer.huawei.com/consumer/cn/cangjie) | Toolchains and learning resources for HarmonyOS development |
| [Cangjie Compiler](https://gitcode.com/Cangjie/cangjie_compiler) | Source code for the compiler and `cjdb` debugging tool |
| [Cangjie Runtime](https://gitcode.com/Cangjie/cangjie_runtime) | Runtime environment and standard library |

---

## 🚀 Quickstart

### Requirements

| Dependency | Notes |
|:--|:--|
| **Operating System** | Any platform that supports Docker |
| **Docker** | Required for the Sandbox environment. The complete Cangjie runtime and testing frameworks are encapsulated in a lightweight container |
| **Python 3.8+** | Virtual environment recommended (`python -m venv .venv`) |

### Repo Structure

```text
CangjieBench/
├── CangjieBench/           # Core benchmark module (Sandbox, datasets, API)
│   └── README.md           #   -> Sandbox setup guide
├── CangjieCodeCorpus/      # Code corpus for RAG (Code) method
├── CangjieDocCorpus/       # Documentation corpus for RAG (Docs) method
├── Prompts/                # Prompt templates for all 4 methods
├── Results/                # LLM outputs for each method
├── Evaluate/               # Evaluation scripts
│   └── evaluate.py
├── requirements.txt
└── README.md               # This file
```

---

## 🛠️ Usage & Evaluation

Follow the pipeline below to reproduce our results or evaluate new models.

### Step 1 &mdash; Environment Setup

**Install Python dependencies:**

```bash
pip install -r requirements.txt
```

**Initialize the Sandbox:**

The evaluation relies on a Docker container to compile and run Cangjie code safely. See [CangjieBench/README.md](./CangjieBench/README.md) for detailed build instructions.

```bash
# Start the sandbox (map host port 8080 -> container port 8080)
docker run -it -p 8080:8080 cangjie-sandbox:1.0

# (Optional) Custom concurrency settings
docker run -it -p 8080:8080 \
  -e GUNICORN_WORKERS=8 \
  -e GUNICORN_THREADS=4 \
  cangjie-sandbox:1.0
```

> [!IMPORTANT]
> Ensure the Docker container is running (`docker ps`) before proceeding. The evaluation script communicates with the container via a local HTTP API.

### Step 2 &mdash; Run Evaluation

The `evaluate.py` script reads generated code, sends it to the Docker Sandbox for compilation and testing, and computes detailed metrics.

```bash
python Evaluate/evaluate.py \
    --dataset [HumanEval|ClassEval] \
    --input_file ./Results/Text_to_Code/Direct/DeepSeek-V3_HumanEval.jsonl \
    --max_workers 4
```

**Parameters:**

| Argument | Required | Default | Description |
|:--|:--|:--|:--|
| `--dataset` | Yes | &mdash; | Dataset to evaluate: `HumanEval` or `ClassEval` |
| `--input_file` | Yes | &mdash; | Path to the JSONL file with model generations |
| `--max_workers` | No | `4` | Number of concurrent evaluation requests |

### Step 3 &mdash; Review Results

After the script finishes, summary metrics (Pass@1, Compile Rate, etc.) are printed to the console.

### Step 4 &mdash; Evaluate Your Own Models

To test a new LLM or method on CangjieBench:

**4a. Load prompts** &mdash; Read problem descriptions from the ground-truth datasets:

- **HumanEval**: `CangjieBench/HumanEval_Cangjie.jsonl`
- **ClassEval**: `CangjieBench/ClassEval_Cangjie.jsonl`

**4b. Generate solutions** &mdash; Ensure the model produces valid Cangjie code (functions for HumanEval, classes for ClassEval).

**4c. Format the output** &mdash; Save generations into a JSONL file with the following structure:

| Field | Description |
|:--|:--|
| `id` | Must match the `id` from the source dataset |
| `solution` | Raw code generated by the model |

<details>
<summary><b>Example JSONL format</b></summary>

**HumanEval:**
```json
{"id": 0, "solution": "func has_close_elements(...) { ... }"}
{"id": 1, "solution": "func separate_paren_groups(...) { ... }"}
```

**ClassEval:**
```json
{"id": "0", "solution": "class MyClass { ... }"}
{"id": "1", "solution": "class AnotherClass { ... }"}
```
</details>

**4d. Execute evaluation:**

```bash
python Evaluate/evaluate.py \
    --dataset HumanEval \
    --input_file ./path/to/output_HumanEval.jsonl \
    --max_workers 4
```

---

## 👋 Overview of Our Report

<p align="center">
    <img src="assets/benchmark.png" alt="Cangjie Benchmark" width="100%">
</p>

**CangjieBench** is the first comprehensive benchmark designed to evaluate Large Language Models (LLMs) on the **Cangjie** programming language. Due to the scarcity of high-quality open-source Cangjie code, we adopted a rigorous translation-based strategy to construct a ground-truth dataset that ensures correctness and minimizes bias.

### 📊 Dataset Construction

Unlike repository-level benchmarks that introduce complex dependencies, we focus on standalone function-level and class-level tasks to ensure strict verification. The dataset consists of **248 high-quality samples**:

| Source | Level | Count |
|:--|:--|--:|
| [HumanEval](https://github.com/openai/human-eval) | Function-level | 164 |
| [ClassEval](https://github.com/FudanSELab/ClassEval) | Class-level | 84 |

**Construction Principles:**

| Principle | Description |
|:--|:--|
| **Type Adaptation** | Strict mapping of Python dynamic types to Cangjie static types (e.g., `int` &rarr; `Int64`, `list` &rarr; `ArrayList`) |
| **Algorithm Preservation** | Original algorithmic flow, control structures, and recursion are preserved |
| **Naming Convention** | Retention of *snake_case* (e.g., `calculate_max_value`) to match original datasets |
| **Prompt Transformation** | Manual translation of all code snippets within prompts (docstrings, signatures) |
| **Dependency Management** | Standard libraries only; heavy third-party dependencies excluded |

### 🎯 Evaluation Tasks

CangjieBench supports two primary tasks to probe the generalization boundaries of foundation models:

1. **Text-to-Code** &mdash; Synthesize valid Cangjie code from natural language instructions.
2. **Code-to-Code** &mdash; Translate Python code to Cangjie, evaluating the model's capacity to transfer programming patterns to a syntactically distinct, unseen language.

### 🧪 Evaluation Framework

We provide an automated, secure, and reproducible evaluation sandbox encapsulated via **Docker**:

- **Isolation** &mdash; Integrates the complete Cangjie runtime and standard libraries.
- **Flexibility** &mdash; Beyond running CangjieBench test suites, the sandbox supports execution of *any* Cangjie code.

### 💡 Methods

<p align="center">
    <img src="assets/methods.png" alt="Cangjie Methods" width="100%">
</p>

We investigate how well current LLMs transfer knowledge to a new language *without* fine-tuning, focusing on four paradigms:

| # | Method | Description |
|:--|:--|:--|
| 1 | **Direct Generation** | Model relies entirely on pre-trained weights to infer Cangjie syntax and semantics |
| 2 | **Syntax-Constrained** | Simplified Cangjie grammar rules are injected into the prompt via in-context learning |
| 3 | **RAG (Docs / Code)** | BM25-based retrieval of official docs or few-shot code examples |
| 4 | **Agent** | CLI-based agent that autonomously consults official Cangjie docs and APIs |

---

## 📈 Results

<p align="center">
    <img src="assets/results.png" alt="Cangjie Results" width="100%">
</p>

The figure above illustrates the primary performance benchmarks of various models. For a comprehensive analysis, please refer to [Results/README.md](./Results/README.md).

---

## ❓ Checklist

- [ ] Ensure Docker is running before evaluation.
- [ ] Refer to our [Prompts](./Prompts/README.md) if you want to evaluate your own model or method.
