# Error Analysis

Per-sample failure labels for every failed generation in [Results/](../Results/).

## Taxonomy

Each failed sample is assigned one of seven categories:

| Label | Description |
|:--|:--|
| `SYNTAX_FOREIGN_CONSTRUCT` | Invalid syntax that mirrors another language (e.g. Python `for x in y`, Rust `\|acc, x\|` closures) |
| `API_LIBRARY_MISUSE` | Non-existent identifier or wrong call shape (e.g. calling `substring()` which Cangjie does not expose) |
| `TYPE_MUTABILITY_MISUSE` | Type or mutability mismatch (e.g. assigning to an immutable variable, mixing `Int64` and `Float64`) |
| `DUPLICATE_DEFINITION` | Redeclarations or harness conflicts (e.g. the model declares its own `main`) |
| `RUNTIME_EXCEPTION` | Uncaught exception during execution |
| `LOGIC_ERROR` | Code compiles and runs but produces wrong output |
| `TIMEOUT` | Evaluation did not finish within the time budget |

## Directory Layout

```text
Error_Analysis/
├── glm-5.1/            # Primary annotator (used in the paper)
│   ├── <cell>.llm_labels.jsonl
│   └── <cell>.summary.json
├── kimi-k2.6/          # Cross-check annotator
│   ├── <cell>.llm_labels.jsonl
│   └── <cell>.summary.json
├── README.md
└── README_zh.md
```

`<cell>` follows the same flat naming as the evaluation records in `Results/`, e.g. `Text_to_Code__Direct__DeepSeek-V3_HumanEval.jsonl`.

## File Formats

### `<cell>.llm_labels.jsonl`

One JSON object per failed sample. Key fields:

| Field | Description |
|:--|:--|
| `sample_key` | Hash identifying the sample |
| `input_jsonl` | Relative path to the generation file |
| `id` | Task index within the cell |
| `failure_kind` | Raw failure kind from the evaluator (`compile_error`, `runtime_exception`, etc.) |
| `first_error_line` | First line of compiler or runtime error output |
| `label` | Assigned category from the taxonomy above |
| `confidence` | `high` or `low` |
| `primary_evidence` | Snippet supporting the label |
| `rationale` | Short explanation of the label |
| `model` | Annotator model name |
| `usage` | Token usage for this annotation call |

### `<cell>.summary.json`

Aggregate statistics for the cell:

| Field | Description |
|:--|:--|
| `expected_rows` / `actual_rows` | Sample counts (should match) |
| `label_counts` | Number of samples per category |
| `confidence_counts` | Number of samples per confidence level |
| `status_counts` | Annotation call outcomes (`ok` / error) |

## Annotator Agreement

The two annotators (glm-5.1 and kimi-k2.6) agree on 99.3% of T2C labels ($\kappa = 0.989$) and 98.9% of C2C labels ($\kappa = 0.981$). The paper reports glm-5.1 as the primary annotator; kimi-k2.6 serves as a cross-check.
