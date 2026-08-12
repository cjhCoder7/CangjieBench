# 📚 Cangjie Code Corpus

<p align="center">
    <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a> &nbsp;|&nbsp; <a href="./README.md"><strong>🌐 English</strong></a>
</p>

> A curated code corpus collected from open-source Cangjie projects, designed for **RAG (Code)** retrieval.

---

## Overview

The Cangjie Code Corpus is a collection of programming language code snippets extracted from real-world Cangjie projects. It serves as a valuable resource for understanding Cangjie code patterns and enabling few-shot retrieval.

**Collection cutoff date:** November 10, 2025

After filtering to repositories whose code is at least 80% Cangjie and parsing with the Cangjie AST tool, the corpus contains **30,341 functions** and **31,483 class definitions**.

---

## Version Scope

For the Code RAG experiments, we crawled as much publicly available Cangjie code as we could collect. The crawl did not enforce a single Cangjie SDK or compiler version: at the time, the amount of code pinned to a specific version was limited, so restricting the crawl would have substantially reduced the retrieval corpus.

Cangjie syntax is generally stable across versions, especially in the simple function- and class-level code used for retrieval and generation. We therefore expect the mixed-version corpus to have little effect on the benchmark results, while providing broader coverage of useful Cangjie examples.

---

## Directory Structure

```text
.
├── functions.jsonl          # Extracted function declarations
├── classes.jsonl            # Extracted class definitions
├── gitcode_crawl.py         # Crawler for open-source Cangjie projects
├── parse_func_class.cj      # Cangjie script for extracting functions & classes
├── parse_func_class         # Compiled executable for parsing
└── repo_info.json           # Metadata about source repositories
```

---

## File Descriptions

### `functions.jsonl`

Each line is a JSON object containing an extracted function declaration:

| Field | Description |
|:--|:--|
| `code` | Full function source code |
| `source_file` | Path to the original `.cj` file |
| `repo` | Repository name |

### `classes.jsonl`

Each line is a JSON object containing an extracted class definition:

| Field | Description |
|:--|:--|
| `code` | Full class source code |
| `source_file` | Path to the original `.cj` file |
| `repo` | Repository name |

---

## Data Access

> [!IMPORTANT]
> Due to copyright restrictions, the processed data files (`functions.jsonl` and `classes.jsonl`) are **not included** in this repository. To generate them locally:
>
> 1. Run `gitcode_crawl.py` to download the raw repositories.
> 2. Execute the compiled `parse_func_class` tool to extract functions and classes from the downloaded source code.
