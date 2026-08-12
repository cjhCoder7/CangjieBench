# <img src="assets/logo.png" alt="Logo" width="3%"> CangjieBench: Can LLM Coding Assistants Support Emerging Programming Languages?

<p align="center">
    <img src="assets/cangjie_challenge.png" alt="Cangjie Challenge" width="50%">
</p>

<p align="center">
    <img alt="Cangjie Lang" src="https://img.shields.io/badge/Cangjie_Lang.-1.0.0-blue">
    <img alt="cjc" src="https://img.shields.io/badge/cjc-v1.0.0-brightgreen">
    <img alt="dataset" src="https://img.shields.io/badge/dataset-open-purple">
    <img alt="License" src="https://img.shields.io/badge/License-MIT-green.svg">
</p>

<p align="center">If you like our project, please give it a star ⭐ to show your support! Thank you :)</p>

<h4 align="center">
    <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a> &nbsp;|&nbsp; <a href="./README.md"><strong>🌐 English</strong></a>
</h4>

---

## Table of Contents

- [What is Cangjie?](#-what-is-cangjie)
- [Quickstart](#-quickstart)
- [Evaluate with Harbor](#-evaluate-with-harbor)
- [Usage & Evaluation](#%EF%B8%8F-usage--evaluation)
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
├── CangjieBench-harbor/    # Recommended Harbor evaluation tasks (164 HumanEval + 84 ClassEval)
├── CangjieCodeCorpus/      # Code corpus for RAG (Code) method
├── CangjieDocCorpus/       # Documentation corpus for RAG (Docs) method
├── Prompts/                # Prompt templates for all 4 methods
├── Results/                # LLM outputs for each method
├── Error_Analysis/         # Per-sample failure labels from two LLM annotators
├── requirements.txt
└── README.md               # This file
```

---

## ⚓ Evaluate with Harbor

> [!TIP]
> Harbor is the recommended way to evaluate CangjieBench. Its standardized task format makes integration simpler: place the task metadata, environment Dockerfile, starter code, and tests in one task directory, then run Harbor without implementing a separate evaluation API client.

The Harbor task suite is available in [`CangjieBench-harbor`](./CangjieBench-harbor/), with 164 HumanEval and 84 ClassEval tasks. Each task contains its metadata, an environment Dockerfile, a starter `main.cj`, tests, and a reference solution. Harbor builds the task environment from `cjhcoder7/cangjiebench:1.0.0`, lets the agent work in the task workspace, and runs the verifier to produce a reward.

To run a task with Harbor from the repository root:

```bash
uv run harbor run \
  --path ./CangjieBench-harbor/humaneval-0 \
  --agent oracle \
  --env docker \
  --n-concurrent 1 \
  --yes
```

---

## 🛠️ Usage & Evaluation

### Step 1 &mdash; Environment Setup

**Initialize the Sandbox:**

The evaluation relies on a Docker container to compile and run Cangjie code safely. See [CangjieBench/README.md](./CangjieBench/README.md) for detailed build instructions.

```bash
# Start the sandbox (map host port 8080 -> container port 8080)
docker run -it -p 8080:8080 cangjie-sandbox:1.0
```

> [!IMPORTANT]
> Ensure the Docker container is running (`docker ps`) before proceeding. The evaluation script communicates with the container via a local HTTP API.

### Step 2 &mdash; Run Evaluation

Use the evaluation API provided by the CangjieBench Sandbox to compile and test generated code. See [CangjieBench/README.md](./CangjieBench/README.md) for the API specification.

### Step 3 &mdash; Evaluate Your Own Models

**3a. Load prompts** &mdash; Read problem descriptions from the ground-truth datasets:

- **HumanEval**: `CangjieBench/HumanEval_Cangjie.jsonl`
- **ClassEval**: `CangjieBench/ClassEval_Cangjie.jsonl`

**3b. Generate solutions** &mdash; Ensure the model produces valid Cangjie code (functions for HumanEval, classes for ClassEval).

**3c. Format the output** &mdash; Save generations into a JSONL file with the following structure:

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

**3d. Submit to the Sandbox API for compilation and testing.**

---

## ❓ Checklist

- [ ] Ensure Docker is running before evaluation.
- [ ] Refer to our [Prompts](./Prompts/README.md) if you want to evaluate your own model or method.
