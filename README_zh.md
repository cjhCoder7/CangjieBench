# [Submitted to ACL 2026] <img src="assets/logo.png" alt="Logo" width="3%"> CANGJIEBENCH: Evaluating LLM Generalization on a New Low-Resource General-Purpose Language (在一种全新的低资源通用编程语言上评测大语言模型的泛化能力)

<p align="center">
    <img src="assets/cangjie_challenge.png" alt="Cangjie Challenge" width="50%">
</p>

<p align="center">
<img alt="Cangjie Lang" src="https://img.shields.io/badge/Cangjie_Lang.-1.0.0-blue">
<img alt="" src="https://img.shields.io/badge/cjc-v1.0.0-brightgreen" style="display: inline-block;" />
<img alt="" src="https://img.shields.io/badge/dataset-open-purple" style="display: inline-block;" />
<img src="https://img.shields.io/badge/License-Apache%202.0-orange.svg" alt="License">
</p>

<h5 align="center">如果你喜欢我们的项目，欢迎点一个 ⭐ 以示支持！非常感谢 :)</h5>

<h4 align="center">
    <strong><a href="./README_zh.md">🇨🇳 中文</a></strong> | <strong><a href="./README.md">🌐 English</a></strong>
</h4>

* [🤔 What is Cangjie?（什么是仓颉？）](#what-is-cangjie)
* [🚀 Quickstart](#quickstart)
* [🛠️ Usage & Evaluation（使用与评测）](#evaluation)
* [👋 Overview of Our Report（报告概览）](#overview-of-our-report)
* [📈 Results（实验结果）](#results)
* [❓ Checklist](#checklist)

# <span id="what-is-cangjie">🤔What is Cangjie?

**仓颉（Cangjie）** 是由 [华为（Huawei）](https://www.huawei.com/) 设计的一种面向全场景智能的新一代编程语言。它具备**原生 AI 支持**、**天然的全场景适配能力**、**高性能**以及**强安全性**等特性，适用于多设备—云协同环境下的应用开发，为开发者提供卓越的编程体验。

* [**仓颉语言官方网站**](https://cangjie-lang.cn): 提供仓颉语言的文档、教程、社区支持等资源
* [**仓颉主页（HarmonyOS 开发者）**](https://developer.huawei.com/consumer/cn/cangjie)：用于 HarmonyOS 上仓颉应用开发的工具链与学习资源
* [**仓颉编译器**](https://gitcode.com/Cangjie/cangjie_compiler)：仓颉编译器及 `cjdb` 调试工具的源码
* [**仓颉运行时**](https://gitcode.com/Cangjie/cangjie_runtime)：仓颉语言的运行时环境与标准库

# <span id="quickstart">🚀Quickstart

## Requirements（环境要求）

* **操作系统**：CangjieBench 可运行于任何支持 Docker 的平台
* **Docker**：评测依赖 Docker Sandbox 环境。我们将完整的仓颉运行时与测试框架封装在一个轻量级容器中
* **Python**：推荐使用虚拟环境（`python -m venv .venv`）


## 📂Repo Structure（仓库结构）

* **`CangjieBench/`**：核心基准测试模块

  * [CangjieBench/README_zh.md](./CangjieBench/README_zh.md)：介绍仓颉 Sandbox 环境的搭建方式

* **`CangjieCodeCorpus/`** & **`CangjieDocCorpus/`**：用于 RAG 与 Agent 方法的知识库

* **`Prompts/`**：四种实验方法（Direct、Syntax-Constrained、RAG、Agent）对应的提示词模板

* **`Results/`**：存储不同大语言模型在各实验方法下的生成结果

* **`Evaluate/`**：用于评测模型输出的脚本


# <span id="evaluation">🛠️Usage & Evaluation

如需复现实验结果或评测新的模型，请按照以下流程操作。

## 1. Environment Setup（环境配置）

在开始评测前，需要配置 Python 环境并初始化仓颉 Sandbox。

### 安装 Python 依赖

```bash
pip install -r requirements.txt
```

### 初始化 Sandbox

评测依赖 Docker 容器来安全地编译与运行仓颉代码。请参考 [CangjieBench/README_zh.md](./CangjieBench/README_zh.md) 中的详细构建说明。

构建完成后，运行：

```bash
# 基础运行（将主机 8080 映射到容器 8080）
docker run -it -p 8080:8080 cangjie-sandbox:1.0

# 查看正在运行的容器
docker ps

# 查看日志
docker logs <container_id>
```

> [!IMPORTANT]
>
> 在继续之前，请确保 Docker 容器正在运行（`docker ps`）。评测脚本将通过本地 API 与该容器通信以执行代码。



## 2. Running Evaluation（运行评测）

当 Sandbox 运行后，即可使用 `Evaluate/` 目录下的脚本，对 `Results/` 中的模型输出进行评测。

`evaluate.py` 会读取生成代码，将其发送至 Docker Sandbox 中进行编译与测试，并计算详细评测指标。

### 基本用法

```bash
python Evaluate/evaluate.py \
    --dataset [HumanEval|ClassEval] \
    --input_file ./Results/Text_to_Code/Direct/DeepSeek-V3_HumanEval.jsonl
```

### 参数说明

* `--dataset`：指定评测数据集（`HumanEval` 或 `ClassEval`）
* `--input_file`：位于 `Results/` 目录下的生成结果文件路径


## 3. Reviewing Results（查看结果）

脚本执行完成后，会在终端输出汇总指标，如 **Pass@1**、**Compile Rate** 等。

## 4. Evaluate Your Own Models or Methods（评测你自己的模型或方法）

如果你希望在 CangjieBench 上测试新的大语言模型或新的方法，请按以下步骤操作。

### Step 1：加载 Prompt 与数据集

从 `CangjieBench/` 目录读取问题描述与函数 / 类签名：

* **HumanEval**：`CangjieBench/HumanEval_Cangjie.jsonl`
* **ClassEval**：`CangjieBench/ClassEval_Cangjie.jsonl`

### Step 2：生成解答

确保模型生成的是**合法的仓颉代码**：

* HumanEval：函数级代码
* ClassEval：类级代码

### Step 3：格式化输出

将模型生成结果保存为 **JSONL** 文件，格式必须严格遵循以下结构：

* `id`：需与原始数据集中的 `id` 一致
* `solution`：模型生成的原始代码

**HumanEval 示例：**

```json
{"id": 0, "solution": ""}
{"id": 1, "solution": ""}
```

**ClassEval 示例：**

```json
{"id": "0", "solution": ""}
{"id": "1", "solution": ""}
```

### Step 4：执行评测

```bash
python Evaluate/evaluate.py \
    --dataset HumanEval \
    --input_file ./path/to/output_HumanEval.jsonl
```

# <span id="overview-of-our-report">👋Overview of Our Report

<p align="center">
    <img src="assets/benchmark.png" alt="Cangjie Benchmark" width="100%">
</p>

**CangjieBench** 是首个面向 **仓颉（Cangjie）编程语言** 的系统性评测基准，用于评估大语言模型（LLMs）的代码泛化能力。

鉴于高质量开源仓颉代码的稀缺性，我们采用了一种**严格的翻译式构建策略**来生成 ground-truth 数据集，以确保正确性并尽量减少偏置。



## 📊Dataset Construction（数据集构建）

与引入复杂依赖的仓库级基准不同，我们专注于**函数级与类级的独立任务**，以保证评测的可验证性。

数据集共包含 **248 个高质量样本**：

* **164 道题目** 来自 [HumanEval]（函数级）
* **84 道题目** 来自 [ClassEval]（类级）

### 构建原则

在将 Python 基准严格迁移至仓颉语言时，我们遵循以下原则：

* **类型适配**：将 Python 的动态类型严格映射为仓颉的静态类型（如 `int → Int64`，`list → ArrayList`）
* **算法一致性**：保留原始算法流程、控制结构与递归逻辑
* **命名规范**：保留 *snake_case* 命名（如 `calculate_max_value`）
* **Prompt 转换**：对 prompt 中的所有代码片段（docstring、签名）进行人工翻译以匹配仓颉语法
* **依赖管理**：仅使用标准库；移除重型第三方依赖（如 `sklearn`），必要时实现轻量级封装（如 `hashlib`）

## 🎯Evaluation Tasks（评测任务）

CangjieBench 支持两类核心任务，用于探测基础模型的泛化边界：

1. **Text-to-Code**：从自然语言指令生成合法仓颉代码
2. **Code-to-Code**：将 Python 代码翻译为仓颉代码，评估模型将编程模式迁移到一种语法完全不同、未见过语言的能力

## 🧪Evaluation Framework（评测框架）

我们基于 **Docker** 提供了一个自动化、安全、可复现的评测 Sandbox：

* **隔离性**：集成完整的仓颉运行时与标准库
* **灵活性**：不仅支持 CangjieBench 测试，还可执行任意仓颉代码

## 💡Methods

<p align="center">
    <img src="assets/methods.png" alt="Cangjie Methods" width="100%">
</p>

我们研究在**不进行微调**的前提下，现有大语言模型向一种新语言迁移知识的能力，重点考察以下四种主流范式：

### 1. Direct Generation

仅向模型提供问题描述（Text-to-Code）或 Python 源代码（Code-to-Code），完全依赖其预训练权重推断语法与语义。

### 2. Syntax-Constrained Generation

为缓解预训练数据中缺乏仓颉语言导致的语法错误，我们在 prompt 中注入简化的**仓颉语法规则**，通过上下文学习引导模型生成正确代码。

### 3. Retrieval-Augmented Generation (RAG)

基于 BM25 与查询转换实现两种 RAG 策略：

* **RAG（Docs）**：检索官方使用指南与 API 文档
* **RAG（Code）**：检索仓颉代码仓库中的 few-shot 示例

### 4. Agent

采用**基于 CLI 的智能体**模拟真实开发流程。Agent 可自主决定是否查阅官方文档与 API，并通过研究驱动的方式弥补其知识缺口。

# <span id="results">📈Results

<p align="center">
    <img src="assets/results.png" alt="Cangjie Results" width="100%">
</p>

上图展示了不同模型的主要性能指标。更详细的分析请参见
[Results/README_zh.md](./Results/README_zh.md)。

# <span id="checklist">❓Checklist

* [ ] 在评测前确保 Docker 正在运行
* [ ] 若评测自定义模型或方法，请参考我们的 [Prompts](./Prompts/README_zh.md)
