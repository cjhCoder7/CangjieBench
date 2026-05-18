# 📝 提示词

<p align="center">
    <a href="./README.md"><strong>🌐 English</strong></a> &nbsp;|&nbsp; <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a>
</p>

> 四种实验方法所使用的提示词模板。

<p align="center">
    <img src="../assets/methods.png" alt="Cangjie Methods" width="100%">
</p>

---

## 1. 直接提示（Direct Prompting）

模型仅接收问题描述（Text-to-Code）或 Python 源代码（Code-to-Code），完全依赖预训练权重推断语法与语义。

| 文件 | 说明 |
|:--|:--|
| `prompt_direct.md` | Text-to-Code 提示词 |
| `prompt_direct_trans.md` | Code-to-Code（Python &rarr; Cangjie）提示词 |

---

## 2. 语法约束提示（Syntax-Constrained Prompting）

在提示词中注入精简的**仓颉语法速查表**（2,146 token，覆盖 20 个语法类别），通过上下文学习引导模型生成正确代码。

| 文件 | 说明 |
|:--|:--|
| `prompt_syntax_rule.md` | 注入语法约束的 Text-to-Code 提示词 |
| `prompt_syntax_rule_trans.md` | 注入语法约束的 Code-to-Code 提示词 |
| `syntax_rule.md` | 简化版仓颉语法规则集 |

---

## 3. 检索增强生成（RAG）

基于 BM25（top-3）和查询转换实现两种检索策略：

### RAG（文档）

先通过关键词提取将自然语言查询转换为技术关键词，再检索官方使用指南和 API 文档。

| 文件 | 说明 |
|:--|:--|
| `prompt_rag_doc.md` | 融合检索到的 API 文档的 Text-to-Code 提示词 |
| `prompt_rag_doc_trans.md` | 融合检索到的 API 文档的 Code-to-Code 提示词 |
| `prompt_rag_doc_key_word.md` | 检索前关键词提取的辅助提示词 |

> 检索语料库：[CangjieDocCorpus](../CangjieDocCorpus)

### RAG（代码）

从仓颉代码片段库中检索 few-shot 示例。由于 prompt 本身已包含代码特征（签名、类型提示等），直接将 prompt 发送给 BM25。

| 文件 | 说明 |
|:--|:--|
| `prompt_rag_code.md` | 融合检索到的代码示例的 Text-to-Code 提示词 |
| `prompt_rag_code_trans.md` | 融合检索到的代码示例的 Code-to-Code 提示词 |

> 检索语料库：[CangjieCodeCorpus](../CangjieCodeCorpus/README_zh.md)

---

## 4. Agent（智能体）

采用**基于 CLI 的智能体**（Codex CLI、Qwen Code CLI 或 iFlow CLI）模拟开发者工作流程：自主查阅文档、编写代码、运行编译器并多轮修订输出。

| 文件 | 说明 |
|:--|:--|
| `prompt_agent.md` | Text-to-Code 智能体指令 |
| `prompt_agent_trans.md` | Code-to-Code 智能体指令 |
