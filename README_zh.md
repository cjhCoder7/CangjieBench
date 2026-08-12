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
- [使用 Harbor 进行评测](#-使用-harbor-进行评测)
- [使用与评测](#%EF%B8%8F-使用与评测)
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
├── CangjieBench-harbor/    # 优先推荐的 Harbor 评测任务集（164 个 HumanEval + 84 个 ClassEval）
├── CangjieCodeCorpus/      # 代码语料库，用于 RAG（Code）方法
├── CangjieDocCorpus/       # 文档语料库，用于 RAG（Docs）方法
├── Prompts/                # 四种实验方法的提示词模板
├── Results/                # 各方法下 LLM 的生成结果
├── Error_Analysis/         # 两个 LLM 标注器对失败样本的错误类别标注
├── requirements.txt
└── README_zh.md            # 本文件
```

---

## ⚓ 使用 Harbor 进行评测

> [!TIP]
> 推荐使用 Harbor 进行 CangjieBench 评测。Harbor 采用统一的任务目录格式，接入时只需准备任务元数据、环境 Dockerfile、初始代码和测试，即可直接运行，通常无需额外编写评测 API 对接逻辑。

Harbor 任务集位于 [`CangjieBench-harbor`](./CangjieBench-harbor/)，包含 164 个 HumanEval 和 84 个 ClassEval 任务。每个任务包含任务元数据、环境 Dockerfile、初始 `main.cj`、测试以及参考解。Harbor 使用 `cjhcoder7/cangjiebench:1.0.0` 构建任务环境，让 agent 在任务工作区中完成代码，再运行 verifier 并生成 reward。

从仓库根目录运行一个任务：

```bash
uv run harbor run \
  --path ./CangjieBench-harbor/humaneval-0 \
  --agent oracle \
  --env docker \
  --n-concurrent 1 \
  --yes
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

## ❓ 清单

- [ ] 在评测前确保 Docker 正在运行。
- [ ] 若评测自定义模型或方法，请参考我们的 [Prompts](./Prompts/README_zh.md)。
