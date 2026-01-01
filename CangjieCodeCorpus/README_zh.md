# 仓颉代码语料库 (Cangjie Code Corpus)

[**🌐 English**](./README.md) | [**🇨🇳 中文**](./README_zh.md)

> 本仓库包含了一份从开源仓颉项目中收集并整理的代码语料库，专门设计用于 **代码检索增强生成 (Code RAG)** 任务。

## 概览

仓颉代码语料库汇集了从真实世界项目中提取的仓颉编程语言代码片段。该语料库是理解和研究仓颉代码的重要资源。

收集时间截止日期：2025 年 11 月 10 日

## 目录结构

```text
.
├── functions.jsonl          # 提取的函数数据
├── classes.jsonl            # 提取的类数据
├── gitcode_crawl.py         # 用于爬取开源仓颉项目的代码
├── parse_func_class.cj      # 用于提取函数和类的仓颉脚本
├── parse_func_class         # 编译后的解析可执行文件
└── repo_info.json           # 源仓库的元数据信息
```

## 文件说明

### `functions.jsonl`

包含从仓颉源代码文件中提取的**函数声明**。文件中的每一行都是一个符合以下结构的 JSON 对象：

```json
{
  "code": "func function_name(parameters): return_type {\n    // 函数实现\n}",
  "source_file": "path/to/source/file.cj",
  "repo": "repository/name"
}
```

### `classes.jsonl`

包含从仓颉源代码文件中提取的**类定义**。文件中的每一行都是一个符合以下结构的 JSON 对象：

```json
{
  "code": "class ClassName {\n    // 类实现\n}",
  "source_file": "path/to/source/file.cj",
  "repo": "repository/name"
}
```

## 说明

> **关于数据获取的说明：**
> 出于版权限制，本仓库**未包含**处理后的数据文件（**`functions.jsonl`** 和 **`classes.jsonl`**）。用户需按照以下步骤在本地自行生成这些文件：
> 1. 运行 `gitcode_crawl.py` 下载原始代码仓库。
> 2. 执行编译好的 `parse_func_class` 工具，从下载的源代码中提取函数和类。