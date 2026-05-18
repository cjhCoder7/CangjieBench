# <img src="assets/logo.png" alt="Logo" width="3%"> CangjieBench: LLM 编程助手能否支持新兴编程语言？

<p align="center">
    <img src="assets/cangjie_challenge.png" alt="Cangjie Challenge" width="50%">
</p>

<p align="center">
    <img alt="Cangjie Lang" src="https://img.shields.io/badge/Cangjie_Lang.-1.0.0-blue">
    <img alt="cjc" src="https://img.shields.io/badge/cjc-v1.0.0-brightgreen">
    <img alt="dataset" src="https://img.shields.io/badge/dataset-open-purple">
    <img alt="License" src="https://img.shields.io/badge/License-MIT-green.svg">
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
├── Error_Analysis/         # 两个 LLM 标注器对失败样本的错误类别标注
├── requirements.txt
└── README_zh.md            # 本文件
```

---

## 🛠️ 使用与评测

### 第 1 步 &mdash; 环境配置

**初始化 Sandbox：**

评测依赖 Docker 容器来安全地编译与运行仓颉代码。请参考 [CangjieBench/README_zh.md](./CangjieBench/README_zh.md) 中的详细构建说明。

```bash
# 启动 Sandbox（将主机端口 8080 映射到容器端口 8080）
docker run -it -p 8080:8080 cangjie-sandbox:1.0
```

> [!IMPORTANT]
> 在继续之前，请确保 Docker 容器正在运行（`docker ps`）。评测脚本通过本地 HTTP API 与容器通信。

### 第 2 步 &mdash; 运行评测

使用 CangjieBench Sandbox 提供的评测 API 对生成的代码进行编译与测试。API 规格详见 [CangjieBench/README_zh.md](./CangjieBench/README_zh.md)。

### 第 3 步 &mdash; 评测你自己的模型

**3a. 加载 Prompt** &mdash; 从 ground-truth 数据集读取问题描述：

- **HumanEval**：`CangjieBench/HumanEval_Cangjie.jsonl`
- **ClassEval**：`CangjieBench/ClassEval_Cangjie.jsonl`

**3b. 生成解答** &mdash; 确保模型生成合法的仓颉代码（HumanEval 为函数级，ClassEval 为类级）。

**3c. 格式化输出** &mdash; 将生成结果保存为 JSONL 文件，格式如下：

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

**3d. 将生成代码提交至 Sandbox API 进行编译与测试。**

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
| 1 | **直接提示** | 完全依赖预训练权重推断仓颉语法与语义 |
| 2 | **语法约束提示** | 在 prompt 中注入 2,146 token 的仓颉语法速查表，通过上下文学习引导模型 |
| 3 | **RAG（文档 / 代码）** | 基于 BM25 检索（top-3）官方文档或爬取的代码示例；RAG-Docs 在检索前增加关键词提取步骤 |
| 4 | **Agent（智能体）** | 基于 CLI 的智能体（Codex CLI、Qwen Code CLI 或 iFlow CLI），自主查阅文档、运行编译器并多轮修订输出 |

---

## 📈 实验结果

CangjieBench 上的 Pass@1 (%) 和 Compile rate (%)。**T2C** = Text-to-Code，**C2C** = Code-to-Code。Avg. 按 HumanEval (164) 和 ClassEval (84) 的任务数加权平均。每种方法的最优结果加**粗**，全局最优<u>加下划线</u>。

### Pass@1

| 方法 | 模型 | HumanEval T2C | HumanEval C2C | ClassEval T2C | ClassEval C2C | Avg. T2C | Avg. C2C |
|:--|:--|--:|--:|--:|--:|--:|--:|
| **直接提示** | DeepSeek-V3 | 2.4 | 2.4 | 1.2 | 1.2 | 2.0 | 2.0 |
| | ERNIE-4.5 | 3.0 | 4.3 | 0.0 | 1.2 | 2.0 | 3.2 |
| | Kimi-K2 | **20.7** | **21.3** | **4.8** | **8.3** | **15.3** | **16.9** |
| | Qwen3 | 3.7 | 3.7 | 1.2 | 2.4 | 2.8 | 3.2 |
| | Qwen3-Coder | 3.7 | 7.3 | 1.2 | 1.2 | 2.8 | 5.2 |
| | GPT-5 | 6.7 | 7.9 | 1.2 | 3.6 | 4.8 | 6.5 |
| **语法约束提示** | DeepSeek-V3 | 40.9 | 42.7 | 9.5 | 6.0 | 30.2 | 30.2 |
| | ERNIE-4.5 | 36.6 | 32.3 | 1.2 | 4.8 | 24.6 | 23.0 |
| | Kimi-K2 | 55.5 | **53.0** | 11.9 | 14.3 | 40.7 | **39.9** |
| | Qwen3 | 53.0 | 45.1 | 13.1 | 10.7 | 39.5 | 33.5 |
| | Qwen3-Coder | 42.7 | 48.8 | 16.7 | 11.9 | 33.9 | 36.3 |
| | GPT-5 | **64.0** | 44.5 | **23.8** | **25.0** | **50.4** | 37.9 |
| **RAG (Code)** | DeepSeek-V3 | 15.2 | 14.0 | 2.4 | 4.8 | 10.9 | 10.9 |
| | ERNIE-4.5 | 13.4 | 17.7 | 4.8 | 3.6 | 10.5 | 12.9 |
| | Kimi-K2 | **30.5** | **26.8** | **8.3** | 9.5 | **23.0** | 21.0 |
| | Qwen3 | 12.8 | 7.3 | 3.6 | 7.1 | 9.7 | 7.3 |
| | Qwen3-Coder | 23.2 | 17.1 | 3.6 | 6.0 | 16.5 | 13.3 |
| | GPT-5 | **47.0** | **45.1** | **8.3** | **10.7** | **33.9** | **33.5** |
| **RAG (Docs)** | DeepSeek-V3 | 27.4 | 21.3 | 6.0 | 8.3 | 20.2 | 16.9 |
| | ERNIE-4.5 | 11.6 | 11.6 | 2.4 | 3.6 | 8.5 | 8.9 |
| | Kimi-K2 | **32.3** | **30.5** | **7.1** | **16.7** | **23.8** | **25.8** |
| | Qwen3 | 11.6 | 10.4 | 1.2 | 4.8 | 8.1 | 8.5 |
| | Qwen3-Coder | 19.5 | 17.7 | 3.6 | 8.3 | 14.1 | 14.5 |
| | GPT-5 | **36.0** | **31.1** | **7.1** | 10.7 | **26.2** | 24.2 |
| **Agent** | Kimi-K2 (iFlow CLI) | 39.0 | 48.2 | 17.9 | 22.6 | 31.9 | 39.5 |
| | Qwen3-Coder (iFlow CLI) | 29.9 | 29.9 | 4.8 | 14.3 | 21.4 | 24.6 |
| | Qwen3-Coder (Qwen Code CLI) | 25.0 | 23.8 | 7.1 | 7.1 | 19.0 | 18.1 |
| | GPT-5 (Codex CLI) | <u>**84.8**</u> | <u>**86.6**</u> | <u>**32.1**</u> | <u>**58.3**</u> | <u>**66.9**</u> | <u>**77.0**</u> |

### Compile Rate

| 方法 | 模型 | HumanEval T2C | HumanEval C2C | ClassEval T2C | ClassEval C2C | Avg. T2C | Avg. C2C |
|:--|:--|--:|--:|--:|--:|--:|--:|
| **直接提示** | DeepSeek-V3 | 3.0 | 3.0 | 1.2 | 1.2 | 2.4 | 2.4 |
| | ERNIE-4.5 | 4.3 | 4.9 | 0.0 | 1.2 | 2.8 | 3.6 |
| | Kimi-K2 | **23.8** | **23.8** | **7.1** | **8.3** | **18.1** | **18.5** |
| | Qwen3 | 4.3 | 4.3 | 1.2 | 2.4 | 3.2 | 3.6 |
| | Qwen3-Coder | 4.3 | 7.9 | 1.2 | 1.2 | 3.2 | 5.6 |
| | GPT-5 | 7.3 | 8.5 | 1.2 | 3.6 | 5.2 | 6.9 |
| **语法约束提示** | DeepSeek-V3 | 47.6 | 44.5 | 16.7 | 6.0 | 37.1 | 31.5 |
| | ERNIE-4.5 | 39.0 | 35.4 | 2.4 | 6.0 | 26.6 | 25.4 |
| | Kimi-K2 | 62.2 | **56.1** | 22.6 | 15.5 | 48.8 | **42.3** |
| | Qwen3 | 57.3 | 47.6 | 22.6 | 14.3 | 45.6 | 36.3 |
| | Qwen3-Coder | 47.6 | 51.8 | 22.6 | 13.1 | 39.1 | 38.7 |
| | GPT-5 | **67.1** | 45.1 | **40.5** | **31.0** | **58.1** | 40.3 |
| **RAG (Code)** | DeepSeek-V3 | 16.5 | 15.9 | 3.6 | 4.8 | 12.1 | 12.1 |
| | ERNIE-4.5 | 15.9 | 18.9 | 6.0 | 3.6 | 12.5 | 13.7 |
| | Kimi-K2 | **33.5** | **31.7** | **13.1** | 9.5 | **26.6** | 24.2 |
| | Qwen3 | 13.4 | 7.9 | 3.6 | 7.1 | 10.1 | 7.7 |
| | Qwen3-Coder | 25.0 | 18.3 | 7.1 | 7.1 | 19.0 | 14.5 |
| | GPT-5 | **49.4** | **47.0** | **13.1** | **13.1** | **37.1** | **35.5** |
| **RAG (Docs)** | DeepSeek-V3 | 33.5 | 22.6 | 9.5 | 9.5 | 25.4 | 18.1 |
| | ERNIE-4.5 | 13.4 | 12.8 | 3.6 | 3.6 | 10.1 | 9.7 |
| | Kimi-K2 | **34.8** | **34.1** | 11.9 | **16.7** | **27.0** | **28.2** |
| | Qwen3 | 12.8 | 12.2 | 1.2 | 4.8 | 8.9 | 9.7 |
| | Qwen3-Coder | 22.6 | 18.9 | 6.0 | 9.5 | 16.9 | 15.7 |
| | GPT-5 | **37.2** | 32.3 | **15.5** | **16.7** | **29.8** | 27.0 |
| **Agent** | Kimi-K2 (iFlow CLI) | 44.5 | 51.8 | 26.2 | 27.4 | 38.3 | 43.5 |
| | Qwen3-Coder (iFlow CLI) | 32.3 | 33.5 | 9.5 | 17.9 | 24.6 | 28.2 |
| | Qwen3-Coder (Qwen Code CLI) | 30.5 | 27.4 | 8.3 | 8.3 | 23.0 | 21.0 |
| | GPT-5 (Codex CLI) | <u>**87.2**</u> | <u>**87.8**</u> | <u>**67.9**</u> | <u>**65.5**</u> | <u>**80.6**</u> | <u>**80.2**</u> |

逐 cell 记录与 token 使用量详见 [Results/README_zh.md](./Results/README_zh.md)。

### 失败分析

每个失败样本被标注为七种错误类别之一（外来语法、API/库、类型/可变性、重复定义、运行时异常、逻辑错误、超时）。标注由两个独立的 LLM 标注器（glm-5.1 和 kimi-k2.6）完成，原始一致率 $\kappa \geq 0.98$。

```text
Error_Analysis/
├── glm-5.1/            # 主标注器（论文表格中使用）
│   ├── <cell>.llm_labels.jsonl   # 每个样本的标签、置信度、证据与理由
│   └── <cell>.summary.json       # 该 cell 的标签分布
└── kimi-k2.6/          # 交叉验证标注器
    ├── <cell>.llm_labels.jsonl
    └── <cell>.summary.json
```

`<cell>` 的命名与 `Results/` 中一致（如 `Text_to_Code__Direct__DeepSeek-V3_HumanEval.jsonl`）。

---

## ❓ 清单

- [ ] 在评测前确保 Docker 正在运行。
- [ ] 若评测自定义模型或方法，请参考我们的 [Prompts](./Prompts/README_zh.md)。
