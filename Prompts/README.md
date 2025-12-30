# Prompts

[**🇨🇳 中文**](./README_zh.md) | [**🌐 English**](./README.md)

> This repository contains the prompts used in our four methods.

<p align="center">
    <img src="../assets/methods.png" alt="Cangjie Methods" width="100%">
</p>

## File Description

### 1. Direct Generation

The model is provided solely with the problem description (Text-to-Code) or Python source (Code-to-Code). It relies entirely on pre-trained weights to infer syntax and semantics.

* `prompt_direct.md`: The prompt for generating Cangjie code from natural language.
* `prompt_direct_trans.md`: The prompt for translating Python code to Cangjie.

### 2. Syntax-Constrained Generation

To mitigate invalid syntax caused by the lack of Cangjie in pre-training data, we inject simplified **Cangjie grammar rules** into the prompt. These rules cover essential structures, type definitions, and standard library interfaces to guide the model via in-context learning.

* `prompt_syntax_rule.md`: Text-to-Code prompt with injected syntax constraints.
* `prompt_syntax_rule_trans.md`: Code-to-Code prompt with injected syntax constraints.
* `syntax_rule.md`: The specific set of simplified Cangjie grammar rules.

### 3. Retrieval-Augmented Generation (RAG)

We implement two RAG strategies using BM25 and query transformation:

#### RAG (Docs)

Retrieves relevant official usage guides and API documentation based on generated keywords.

* `prompt_rag_doc.md`: Text-to-Code prompt that incorporates retrieved API documentation.
* `prompt_rag_doc_trans.md`: Code-to-Code prompt that incorporates retrieved API documentation.
* `prompt_rag_doc_key_word.md`: An auxiliary prompt used to extract search keywords from the problem description before performing retrieval.

[CangjieDocCorpus](../CangjieDocCorpus/) stores the official Cangjie documentation corpus and API reference used for retrieval.

#### RAG (Code)

Retrieves few-shot examples from a curated repository of Cangjie code snippets.

* `prompt_rag_code.md`: Text-to-Code prompt enriched with retrieved similar code snippets (Few-shot).
* `prompt_rag_code_trans.md`: Code-to-Code prompt enriched with retrieved similar code snippets.

[CangjieCodeCorpus](../CangjieCodeCorpus/README.md) stores the Cangjie code corpus used for retrieval.

### 4. Agent

This method employs a **CLI-based agent** that simulates a developer's workflow. The agent can autonomously decide to consult official Cangjie usage guides and API references, allowing it to plan and execute a research-driven workflow to bridge its knowledge gap.

* `prompt_agent.md`: The Instruction for the Text-to-Code agent.
* `prompt_agent_trans.md`: The Instruction for the Code-to-Code agent.