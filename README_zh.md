# <img src="assets/logo.png" alt="Logo" width="3%"> CangjieBench: 在一种全新的低资源通用编程语言上评测大语言模型的泛化能力

<p align="center">
    <img src="assets/cangjie_challenge.png" alt="Cangjie Challenge" width="50%">
</p>

<p align="center">
    <img alt="Cangjie Lang" src="https://img.shields.io/badge/Cangjie_Lang.-1.0.0-blue">
    <img alt="cjc" src="https://img.shields.io/badge/cjc-v1.0.0-brightgreen">
    <img alt="dataset" src="https://img.shields.io/badge/dataset-open-purple">
    <img alt="License" src="https://img.shields.io/badge/License-Apache%202.0-orange.svg">
    <!-- <img alt="Venue" src="https://img.shields.io/badge/ACL-2026-red"> -->
</p>

<p align="center">如果你喜欢我们的项目，欢迎点一个 ⭐ 以示支持！非常感谢 :)</p>

<h4 align="center">
    <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a> &nbsp;|&nbsp; <a href="./README.md"><strong>🌐 English</strong></a>
</h4>

---

## 目录

- [什么是仓颉？](#-什么是仓颉)
- [快速开始](#-快速开始)
- [使用与评测](#%EF%B8%8F-使用与评测)
- [报告概览](#-报告概览)
- [实验结果](#-实验结果)
- [清单](#-清单)

---

## 🤔 什么是仓颉？

**仓颉（Cangjie）** 是由 [华为](https://www.huawei.com/) 设计的一种面向全场景智能的新一代编程语言。它具备**原生 AI 支持**、**天然的全场景适配能力**、**高性能**以及**强安全性**等特性，适用于多设备—云协同环境下的应用开发，为开发者提供卓越的编程体验。

| 资源 | 说明 |
|:--|:--|
| [仓颉语言官方网站](https://cangjie-lang.cn) | 文档、教程、社区支持 |
| [仓颉主页（HarmonyOS 开发者）](https://developer.huawei.com/consumer/cn/cangjie) | HarmonyOS 上仓颉应用开发的工具链与学习资源 |
| [仓颉编译器](https://gitcode.com/Cangjie/cangjie_compiler) | 编译器及 `cjdb` 调试工具的源码 |
| [仓颉运行时](https://gitcode.com/Cangjie/cangjie_runtime) | 运行时环境与标准库 |

---

## 🚀 快速开始

### 环境要求

| 依赖 | 说明 |
|:--|:--|
| **操作系统** | 任何支持 Docker 的平台 |
| **Docker** | 评测依赖 Docker Sandbox 环境，完整的仓颉运行时与测试框架封装在一个轻量级容器中 |
| **Python 3.8+** | 推荐使用虚拟环境（`python -m venv .venv`） |

### 仓库结构

```text
CangjieBench/
├── CangjieBench/           # 核心基准测试模块（Sandbox、数据集、API）
│   └── README_zh.md        #   -> Sandbox 搭建指南
├── CangjieCodeCorpus/      # 代码语料库，用于 RAG（Code）方法
├── CangjieDocCorpus/       # 文档语料库，用于 RAG（Docs）方法
├── Prompts/                # 四种实验方法的提示词模板
├── Results/                # 各方法下 LLM 的生成结果
├── Evaluate/               # 评测脚本
│   └── evaluate.py
├── requirements.txt
└── README_zh.md            # 本文件
```

---

## 🛠️ 使用与评测

如需复现实验结果或评测新的模型，请按照以下流程操作。

### 第 1 步 &mdash; 环境配置

**安装 Python 依赖：**

```bash
pip install -r requirements.txt
```

**初始化 Sandbox：**

评测依赖 Docker 容器来安全地编译与运行仓颉代码。请参考 [CangjieBench/README_zh.md](./CangjieBench/README_zh.md) 中的详细构建说明。

```bash
# 启动 Sandbox（将主机端口 8080 映射到容器端口 8080）
docker run -it -p 8080:8080 cangjie-sandbox:1.0

# （可选）自定义并发配置
docker run -it -p 8080:8080 \
  -e GUNICORN_WORKERS=8 \
  -e GUNICORN_THREADS=4 \
  cangjie-sandbox:1.0
```

> [!IMPORTANT]
> 在继续之前，请确保 Docker 容器正在运行（`docker ps`）。评测脚本通过本地 HTTP API 与容器通信。

### 第 2 步 &mdash; 运行评测

`evaluate.py` 会读取生成代码，将其发送至 Docker Sandbox 进行编译与测试，并计算详细评测指标。

```bash
python Evaluate/evaluate.py \
    --dataset [HumanEval|ClassEval] \
    --input_file ./Results/Text_to_Code/Direct/DeepSeek-V3_HumanEval.jsonl \
    --max_workers 4
```

**参数说明：**

| 参数 | 必填 | 默认值 | 说明 |
|:--|:--|:--|:--|
| `--dataset` | 是 | &mdash; | 评测数据集：`HumanEval` 或 `ClassEval` |
| `--input_file` | 是 | &mdash; | 模型生成结果的 JSONL 文件路径 |
| `--max_workers` | 否 | `4` | 并发评测请求数 |

### 第 3 步 &mdash; 查看结果

脚本执行完成后，会在终端输出汇总指标（Pass@1、Compile Rate 等）。

### 第 4 步 &mdash; 评测你自己的模型

如果你希望在 CangjieBench 上测试新的大语言模型或方法：

**4a. 加载 Prompt** &mdash; 从 ground-truth 数据集读取问题描述：

- **HumanEval**：`CangjieBench/HumanEval_Cangjie.jsonl`
- **ClassEval**：`CangjieBench/ClassEval_Cangjie.jsonl`

**4b. 生成解答** &mdash; 确保模型生成合法的仓颉代码（HumanEval 为函数级，ClassEval 为类级）。

**4c. 格式化输出** &mdash; 将生成结果保存为 JSONL 文件，格式如下：

| 字段 | 说明 |
|:--|:--|
| `id` | 需与原始数据集中的 `id` 一致 |
| `solution` | 模型生成的原始代码 |

<details>
<summary><b>JSONL 格式示例</b></summary>

**HumanEval：**
```json
{"id": 0, "solution": "func has_close_elements(...) { ... }"}
{"id": 1, "solution": "func separate_paren_groups(...) { ... }"}
```

**ClassEval：**
```json
{"id": "0", "solution": "class MyClass { ... }"}
{"id": "1", "solution": "class AnotherClass { ... }"}
```
</details>

**4d. 执行评测：**

```bash
python Evaluate/evaluate.py \
    --dataset HumanEval \
    --input_file ./path/to/output_HumanEval.jsonl \
    --max_workers 4
```

---

## 👋 报告概览

<p align="center">
    <img src="assets/benchmark.png" alt="Cangjie Benchmark" width="100%">
</p>

**CangjieBench** 是首个面向**仓颉（Cangjie）编程语言**的系统性评测基准，用于评估大语言模型（LLMs）的代码泛化能力。鉴于高质量开源仓颉代码的稀缺性，我们采用了一种**严格的翻译式构建策略**来生成 ground-truth 数据集，以确保正确性并尽量减少偏置。

### 📊 数据集构建

与引入复杂依赖的仓库级基准不同，我们专注于**函数级与类级的独立任务**，以保证评测的可验证性。数据集共包含 **248 个高质量样本**：

| 来源 | 级别 | 数量 |
|:--|:--|--:|
| [HumanEval](https://github.com/openai/human-eval) | 函数级 | 164 |
| [ClassEval](https://github.com/FudanSELab/ClassEval) | 类级 | 84 |

**构建原则：**

| 原则 | 说明 |
|:--|:--|
| **类型适配** | 将 Python 的动态类型严格映射为仓颉的静态类型（如 `int` &rarr; `Int64`，`list` &rarr; `ArrayList`） |
| **算法一致性** | 保留原始算法流程、控制结构与递归逻辑 |
| **命名规范** | 保留 *snake_case* 命名（如 `calculate_max_value`） |
| **Prompt 转换** | 对 prompt 中的所有代码片段（docstring、签名）进行人工翻译 |
| **依赖管理** | 仅使用标准库；移除重型第三方依赖 |

### 🎯 评测任务

CangjieBench 支持两类核心任务，用于探测基础模型的泛化边界：

1. **Text-to-Code** &mdash; 从自然语言指令生成合法仓颉代码。
2. **Code-to-Code** &mdash; 将 Python 代码翻译为仓颉代码，评估模型将编程模式迁移到一种语法完全不同、未见过的语言的能力。

### 🧪 评测框架

我们基于 **Docker** 提供了一个自动化、安全、可复现的评测 Sandbox：

- **隔离性** &mdash; 集成完整的仓颉运行时与标准库。
- **灵活性** &mdash; 不仅支持 CangjieBench 测试，还可执行任意仓颉代码。

### 💡 方法

<p align="center">
    <img src="assets/methods.png" alt="Cangjie Methods" width="100%">
</p>

我们研究在**不进行微调**的前提下，现有大语言模型向一种新语言迁移知识的能力，重点考察以下四种范式：

| # | 方法 | 说明 |
|:--|:--|:--|
| 1 | **直接生成** | 完全依赖预训练权重推断仓颉语法与语义 |
| 2 | **语法约束** | 在 prompt 中注入简化的仓颉语法规则，通过上下文学习引导模型 |
| 3 | **RAG（文档 / 代码）** | 基于 BM25 检索官方文档或 few-shot 代码示例 |
| 4 | **Agent（智能体）** | 基于 CLI 的智能体，自主查阅官方文档与 API |

---

## 📈 实验结果

<p align="center">
    <img src="assets/results.png" alt="Cangjie Results" width="100%">
</p>

上图展示了不同模型的主要性能指标。更详细的分析请参见 [Results/README_zh.md](./Results/README_zh.md)。

---

## ❓ 清单

- [ ] 在评测前确保 Docker 正在运行。
- [ ] 若评测自定义模型或方法，请参考我们的 [Prompts](./Prompts/README_zh.md)。
