# 📝 Prompts

<p align="center">
    <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a> &nbsp;|&nbsp; <a href="./README.md"><strong>🌐 English</strong></a>
</p>

> Prompt templates used across our four experimental methods.

<p align="center">
    <img src="../assets/methods.png" alt="Cangjie Methods" width="100%">
</p>

---

## 1. Direct Prompting

The model receives only the problem description (Text-to-Code) or Python source (Code-to-Code), relying entirely on pre-trained weights to infer syntax and semantics.

| File | Description |
|:--|:--|
| `prompt_direct.md` | Text-to-Code prompt |
| `prompt_direct_trans.md` | Code-to-Code (Python &rarr; Cangjie) prompt |

---

## 2. Syntax-Constrained Prompting

A concise **Cangjie grammar cheat sheet** (2,146 tokens, covering 20 categories) is injected into the prompt to mitigate invalid syntax, guiding the model via in-context learning.

| File | Description |
|:--|:--|
| `prompt_syntax_rule.md` | Text-to-Code prompt with syntax constraints |
| `prompt_syntax_rule_trans.md` | Code-to-Code prompt with syntax constraints |
| `syntax_rule.md` | Simplified Cangjie grammar rule set |

---

## 3. Retrieval-Augmented Generation (RAG)

Two BM25-based retrieval strategies (top-$k=3$) with query transformation:

### RAG (Docs)

Retrieves relevant official usage guides and API documentation. A keyword-extraction step transforms the natural-language query into technical keywords before issuing them to BM25.

| File | Description |
|:--|:--|
| `prompt_rag_doc.md` | Text-to-Code prompt with retrieved API docs |
| `prompt_rag_doc_trans.md` | Code-to-Code prompt with retrieved API docs |
| `prompt_rag_doc_key_word.md` | Auxiliary prompt for keyword extraction before retrieval |

> Retrieval corpus: [CangjieDocCorpus](../CangjieDocCorpus/)

### RAG (Code)

Retrieves few-shot examples from a curated repository of Cangjie code snippets. The prompt is issued directly to BM25 because it already contains code-shaped material such as signatures and type hints.

| File | Description |
|:--|:--|
| `prompt_rag_code.md` | Text-to-Code prompt with retrieved code examples |
| `prompt_rag_code_trans.md` | Code-to-Code prompt with retrieved code examples |

> Retrieval corpus: [CangjieCodeCorpus](../CangjieCodeCorpus/README.md)

---

## 4. Agent

A **CLI-based agent** (Codex CLI, Qwen Code CLI, or iFlow CLI) simulates a developer's workflow: it reads documentation, writes code, runs the compiler, and revises its output across several turns.

| File | Description |
|:--|:--|
| `prompt_agent.md` | Text-to-Code agent instructions |
| `prompt_agent_trans.md` | Code-to-Code agent instructions |
