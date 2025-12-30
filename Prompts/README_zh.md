# 提示词（Prompts）

[**🌐 English**](./README.md) | [**🇨🇳 中文**](./README_zh.md)

> 本文件夹包含我们在四个方法中使用的提示词。

<p align="center">
    <img src="../assets/methods.png" alt="Cangjie Methods" width="100%">
</p>

## 文件说明

### 1. 直接生成（Direct Generation）

模型仅接收问题描述（Text-to-Code）或 Python 源代码（Code-to-Code）作为输入，完全依赖其预训练权重来推断语法与语义。

* `prompt_direct.md`：从自然语言生成仓颉（Cangjie）代码的提示词。
* `prompt_direct_trans.md`：将 Python 代码翻译为仓颉代码的提示词。

### 2. 语法约束生成（Syntax-Constrained Generation）

为缓解由于预训练数据中缺乏仓颉语言而导致的语法错误，我们在提示词中注入了简化的**仓颉语法规则**。这些规则涵盖了关键语言结构、类型定义以及标准库接口，通过上下文学习（in-context learning）来引导模型生成正确代码。

* `prompt_syntax_rule.md`：注入语法约束的 Text-to-Code 提示词。
* `prompt_syntax_rule_trans.md`：注入语法约束的 Code-to-Code 提示词。
* `syntax_rule.md`：具体使用的简化版仓颉语法规则集合。

### 3. 检索增强生成（Retrieval-Augmented Generation, RAG）

我们基于 BM25 和查询转换（query transformation）实现了两种 RAG 策略：

#### RAG（文档）

根据生成的关键词检索相关的官方使用指南和 API 文档。

* `prompt_rag_doc.md`：融合检索到的 API 文档的 Text-to-Code 提示词。
* `prompt_rag_doc_trans.md`：融合检索到的 API 文档的 Code-to-Code 提示词。
* `prompt_rag_doc_key_word.md`：辅助提示词，用于在检索前从问题描述中提取搜索关键词。

[CangjieDocCorpus](../CangjieDocCorpus) 存储了官方仓颉文档语料库和 API 参考，用于文档检索。

#### RAG（代码）

从精心构建的仓颉代码片段库中检索 few-shot 示例。

* `prompt_rag_code.md`：融合检索到的相似代码片段（Few-shot）的 Text-to-Code 提示词。
* `prompt_rag_code_trans.md`：融合检索到的相似代码片段（Few-shot）的 Code-to-Code 提示词。

[CangjieCodeCorpus](../CangjieCodeCorpus/README_zh.md) 存储了仓颉代码语料库，用于代码检索。

### 4. Agent（智能体）

该方法采用一个**基于 CLI 的智能体**来模拟开发者的实际工作流程。智能体可以自主决定是否查阅官方仓颉使用指南和 API 参考文档，从而规划并执行一个以检索与研究为驱动的工作流，以弥补其自身的知识不足。

* `prompt_agent.md`：用于 Text-to-Code 的智能体指令。
* `prompt_agent_trans.md`：用于 Code-to-Code 的智能体指令。
