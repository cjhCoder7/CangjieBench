# 失败分析

对 [Results/](../Results/) 中每个失败生成的逐样本错误类别标注。

## 分类体系

每个失败样本被归入以下七种类别之一：

| 标签 | 描述 |
|:--|:--|
| `SYNTAX_FOREIGN_CONSTRUCT` | 来自其他语言的无效语法（如 Python 的 `for x in y`、Rust 的 `\|acc, x\|` 闭包） |
| `API_LIBRARY_MISUSE` | 不存在的标识符或错误的调用方式（如调用 Cangjie 未暴露的 `substring()`） |
| `TYPE_MUTABILITY_MISUSE` | 类型或可变性不匹配（如对不可变变量赋值、混用 `Int64` 和 `Float64`） |
| `DUPLICATE_DEFINITION` | 重复声明或与评测框架冲突（如模型自行声明了 `main`） |
| `RUNTIME_EXCEPTION` | 运行时未捕获的异常 |
| `LOGIC_ERROR` | 代码编译运行通过但输出错误 |
| `TIMEOUT` | 评测未在时间预算内完成 |

## 目录结构

```text
Error_Analysis/
├── glm-5.1/            # 主标注器（论文中使用）
│   ├── <cell>.llm_labels.jsonl
│   └── <cell>.summary.json
├── kimi-k2.6/          # 交叉验证标注器
│   ├── <cell>.llm_labels.jsonl
│   └── <cell>.summary.json
├── README.md
└── README_zh.md
```

`<cell>` 的命名与 `Results/` 中评测记录一致，如 `Text_to_Code__Direct__DeepSeek-V3_HumanEval.jsonl`。

## 文件格式

### `<cell>.llm_labels.jsonl`

每个失败样本对应一个 JSON 对象，主要字段：

| 字段 | 描述 |
|:--|:--|
| `sample_key` | 样本哈希标识 |
| `input_jsonl` | 生成文件的相对路径 |
| `id` | 任务在该 cell 中的索引 |
| `failure_kind` | 评测器返回的原始失败类型（`compile_error`、`runtime_exception` 等） |
| `first_error_line` | 编译器或运行时输出的首行错误信息 |
| `label` | 上述分类体系中分配的类别 |
| `confidence` | `high` 或 `low` |
| `primary_evidence` | 支持该标注的代码片段 |
| `rationale` | 标注理由的简短说明 |
| `model` | 标注模型名称 |
| `usage` | 该次标注调用的 token 使用量 |

### `<cell>.summary.json`

该 cell 的汇总统计：

| 字段 | 描述 |
|:--|:--|
| `expected_rows` / `actual_rows` | 样本计数（应一致） |
| `label_counts` | 各类别的样本数 |
| `confidence_counts` | 各置信度的样本数 |
| `status_counts` | 标注调用结果（`ok` 或错误） |

## 标注器一致性

两个标注器（glm-5.1 和 kimi-k2.6）在 T2C 标签上的一致率为 99.3%（$\kappa = 0.989$），在 C2C 标签上为 98.9%（$\kappa = 0.981$）。论文以 glm-5.1 为主标注器，kimi-k2.6 用于交叉验证。
