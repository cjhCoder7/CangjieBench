# 📚 仓颉代码语料库

<p align="center">
    <a href="./README.md"><strong>🌐 English</strong></a> &nbsp;|&nbsp; <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a>
</p>

> 从开源仓颉项目中收集整理的代码语料库，专门用于 **RAG（Code）** 代码检索任务。

---

## 概览

仓颉代码语料库汇集了从真实项目中提取的仓颉编程语言代码片段，是理解仓颉代码模式和实现 few-shot 检索的重要资源。

**收集截止日期：** 2025 年 11 月 10 日

---

## 目录结构

```text
.
├── functions.jsonl          # 提取的函数声明
├── classes.jsonl            # 提取的类定义
├── gitcode_crawl.py         # 开源仓颉项目爬虫
├── parse_func_class.cj      # 用于提取函数和类的仓颉脚本
├── parse_func_class         # 编译后的解析工具
└── repo_info.json           # 源仓库元数据
```

---

## 文件说明

### `functions.jsonl`

每行是一个 JSON 对象，包含提取的函数声明：

| 字段 | 说明 |
|:--|:--|
| `code` | 完整的函数源代码 |
| `source_file` | 原始 `.cj` 文件路径 |
| `repo` | 仓库名称 |

### `classes.jsonl`

每行是一个 JSON 对象，包含提取的类定义：

| 字段 | 说明 |
|:--|:--|
| `code` | 完整的类源代码 |
| `source_file` | 原始 `.cj` 文件路径 |
| `repo` | 仓库名称 |

---

## 数据获取

> [!IMPORTANT]
> 出于版权限制，本仓库**未包含**处理后的数据文件（`functions.jsonl` 和 `classes.jsonl`）。如需在本地生成：
>
> 1. 运行 `gitcode_crawl.py` 下载原始代码仓库。
> 2. 执行编译好的 `parse_func_class` 工具，从下载的源代码中提取函数和类。
