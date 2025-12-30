# Cangjie Code Corpus

[**🇨🇳 中文**](./README_zh.md) | [**🌐 English**](./README.md)

This repository contains a curated code corpus collected from open-source Cangjie projects, specifically designed for use in **RAG (Code)**.

## Overview

The Cangjie Code Corpus is a collection of Cangjie programming language code snippets extracted from real-world projects. This corpus serves as a valuable resource for understanding Cangjie code.

## Repository Structure

```
.
├── functions.jsonl          # Extracted functions
├── classes.jsonl            # Extracted classes
├── gitcode_crawl.py         # Code for crawling open-source Cangjie projects
├── parse_func_class.cj      # Cangjie script for extracting functions and classes
├── parse_func_class         # Compiled executable for parsing
└── repo_info.json           # Metadata about source repositories
```

## File Descriptions

### `functions.jsonl`

Contains extracted function declarations from Cangjie source code files. Each line is a JSON object with the following structure:

```json
{
  "code": "func function_name(parameters): return_type {\n    // function implementation\n}",
  "source_file": "path/to/source/file.cj",
  "repo": "repository/name"
}
```

### `classes.jsonl`

Contains extracted class definitions from Cangjie source code files. Each line is a JSON object with the following structure:

```json
{
  "code": "class ClassName {\n    // class implementation\n}",
  "source_file": "path/to/source/file.cj",
  "repo": "repository/name"
}
```
