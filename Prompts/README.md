# 📝 Prompts

<p align="center">
    <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a> &nbsp;|&nbsp; <a href="./README.md"><strong>🌐 English</strong></a>
</p>

> Prompt templates used across our four experimental methods.

<p align="center">
    <img src="../assets/methods.png" alt="Cangjie Methods" width="100%">
</p>

---

## 1. Direct Generation

The model receives only the problem description (Text-to-Code) or Python source (Code-to-Code), relying entirely on pre-trained weights to infer syntax and semantics.

| File | Description |
|:--|:--|
| `prompt_direct.md` | Text-to-Code prompt |
| `prompt_direct_trans.md` | Code-to-Code (Python &rarr; Cangjie) prompt |

---

## 2. Syntax-Constrained Generation

Simplified **Cangjie grammar rules** are injected into the prompt to mitigate invalid syntax, guiding the model via in-context learning.

| File | Description |
|:--|:--|
| `prompt_syntax_rule.md` | Text-to-Code prompt with syntax constraints |
| `prompt_syntax_rule_trans.md` | Code-to-Code prompt with syntax constraints |
| `syntax_rule.md` | Simplified Cangjie grammar rule set |

---

## 3. Retrieval-Augmented Generation (RAG)

Two BM25-based retrieval strategies with query transformation:

### RAG (Docs)

Retrieves relevant official usage guides and API documentation.

| File | Description |
|:--|:--|
| `prompt_rag_doc.md` | Text-to-Code prompt with retrieved API docs |
| `prompt_rag_doc_trans.md` | Code-to-Code prompt with retrieved API docs |
| `prompt_rag_doc_key_word.md` | Auxiliary prompt for keyword extraction before retrieval |

> Retrieval corpus: [CangjieDocCorpus](../CangjieDocCorpus/)

### RAG (Code)

Retrieves few-shot examples from a curated repository of Cangjie code snippets.

| File | Description |
|:--|:--|
| `prompt_rag_code.md` | Text-to-Code prompt with retrieved code examples |
| `prompt_rag_code_trans.md` | Code-to-Code prompt with retrieved code examples |

> Retrieval corpus: [CangjieCodeCorpus](../CangjieCodeCorpus/README.md)

---

## 4. Agent

A **CLI-based agent** simulates a developer's workflow, autonomously consulting official Cangjie docs and APIs to bridge its knowledge gap.

| File | Description |
|:--|:--|
| `prompt_agent.md` | Text-to-Code agent instructions |
| `prompt_agent_trans.md` | Code-to-Code agent instructions |
