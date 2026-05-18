# Results

<p align="center">
    <a href="./README_zh.md"><strong>CN</strong></a> &nbsp;|&nbsp; <a href="./README.md"><strong>EN</strong></a>
</p>

> Benchmark evaluation results for all models and methods.

---

## Pass@1 (%)

| Method | Subject | HE T2C | HE C2C | CE T2C | CE C2C | Avg T2C | Avg C2C |
|:--|:--|--:|--:|--:|--:|--:|--:|
| **Direct Prompting** | DeepSeek-V3 | 2.4 | 2.4 | 1.2 | 1.2 | 2.0 | 2.0 |
| | ERNIE-4.5 | 3.0 | 4.3 | 0.0 | 1.2 | 2.0 | 3.2 |
| | Kimi-K2 | **20.7** | **21.3** | **4.8** | **8.3** | **15.3** | **16.9** |
| | Qwen3 | 3.7 | 3.7 | 1.2 | 2.4 | 2.8 | 3.2 |
| | Qwen3-Coder | 3.7 | 7.3 | 1.2 | 1.2 | 2.8 | 5.2 |
| | GPT-5 | 6.7 | 7.9 | 1.2 | 3.6 | 4.8 | 6.5 |
| **Syntax-Constrained Prompting** | DeepSeek-V3 | 40.9 | 42.7 | 9.5 | 6.0 | 30.2 | 30.2 |
| | ERNIE-4.5 | 36.6 | 32.3 | 1.2 | 4.8 | 24.6 | 23.0 |
| | Kimi-K2 | 55.5 | **53.0** | 11.9 | 14.3 | 40.7 | **39.9** |
| | Qwen3 | 53.0 | 45.1 | 13.1 | 10.7 | 39.5 | 33.5 |
| | Qwen3-Coder | 42.7 | 48.8 | 16.7 | 11.9 | 33.9 | 36.3 |
| | GPT-5 | **64.0** | 44.5 | **23.8** | **25.0** | **50.4** | 37.9 |
| **RAG (Code)** | DeepSeek-V3 | 15.2 | 14.0 | 2.4 | 4.8 | 10.9 | 10.9 |
| | ERNIE-4.5 | 13.4 | 17.7 | 4.8 | 3.6 | 10.5 | 12.9 |
| | Kimi-K2 | **30.5** | **26.8** | **8.3** | 9.5 | **23.0** | 21.0 |
| | Qwen3 | 12.8 | 7.3 | 3.6 | 7.1 | 9.7 | 7.3 |
| | Qwen3-Coder | 23.2 | 17.1 | 3.6 | 6.0 | 16.5 | 13.3 |
| | GPT-5 | **47.0** | **45.1** | **8.3** | **10.7** | **33.9** | **33.5** |
| **RAG (Docs)** | DeepSeek-V3 | 27.4 | 21.3 | 6.0 | 8.3 | 20.2 | 16.9 |
| | ERNIE-4.5 | 11.6 | 11.6 | 2.4 | 3.6 | 8.5 | 8.9 |
| | Kimi-K2 | **32.3** | **30.5** | **7.1** | **16.7** | **23.8** | **25.8** |
| | Qwen3 | 11.6 | 10.4 | 1.2 | 4.8 | 8.1 | 8.5 |
| | Qwen3-Coder | 19.5 | 17.7 | 3.6 | 8.3 | 14.1 | 14.5 |
| | GPT-5 | **36.0** | **31.1** | **7.1** | 10.7 | **26.2** | 24.2 |
| **Agent** | Kimi-K2 (iFlow CLI) | 39.0 | 48.2 | 17.9 | 22.6 | 31.9 | 39.5 |
| | Qwen3-Coder (iFlow CLI) | 29.9 | 29.9 | 4.8 | 14.3 | 21.4 | 24.6 |
| | Qwen3-Coder (Qwen Code CLI) | 25.0 | 23.8 | 7.1 | 7.1 | 19.0 | 18.1 |
| | GPT-5 (Codex CLI) | <u>**84.8**</u> | <u>**86.6**</u> | <u>**32.1**</u> | <u>**58.3**</u> | <u>**66.9**</u> | <u>**77.0**</u> |

HE = HumanEval, CE = ClassEval, T2C = Text-to-Code, C2C = Code-to-Code.

---

## Compile Rate (%)

| Method | Subject | HE T2C | HE C2C | CE T2C | CE C2C | Avg T2C | Avg C2C |
|:--|:--|--:|--:|--:|--:|--:|--:|
| **Direct Prompting** | DeepSeek-V3 | 3.0 | 3.0 | 1.2 | 1.2 | 2.4 | 2.4 |
| | ERNIE-4.5 | 4.3 | 4.9 | 0.0 | 1.2 | 2.8 | 3.6 |
| | Kimi-K2 | **23.8** | **23.8** | **7.1** | **8.3** | **18.1** | **18.5** |
| | Qwen3 | 4.3 | 4.3 | 1.2 | 2.4 | 3.2 | 3.6 |
| | Qwen3-Coder | 4.3 | 7.9 | 1.2 | 1.2 | 3.2 | 5.6 |
| | GPT-5 | 7.3 | 8.5 | 1.2 | 3.6 | 5.2 | 6.9 |
| **Syntax-Constrained Prompting** | DeepSeek-V3 | 47.6 | 44.5 | 16.7 | 6.0 | 37.1 | 31.5 |
| | ERNIE-4.5 | 39.0 | 35.4 | 2.4 | 6.0 | 26.6 | 25.4 |
| | Kimi-K2 | 62.2 | **56.1** | 22.6 | 15.5 | 48.8 | **42.3** |
| | Qwen3 | 57.3 | 47.6 | 22.6 | 14.3 | 45.6 | 36.3 |
| | Qwen3-Coder | 47.6 | 51.8 | 22.6 | 13.1 | 39.1 | 38.7 |
| | GPT-5 | **67.1** | 45.1 | **40.5** | **31.0** | **58.1** | 40.3 |
| **RAG (Code)** | DeepSeek-V3 | 16.5 | 15.9 | 3.6 | 4.8 | 12.1 | 12.1 |
| | ERNIE-4.5 | 15.9 | 18.9 | 6.0 | 3.6 | 12.5 | 13.7 |
| | Kimi-K2 | **33.5** | **31.7** | **13.1** | 9.5 | **26.6** | 24.2 |
| | Qwen3 | 13.4 | 7.9 | 3.6 | 7.1 | 10.1 | 7.7 |
| | Qwen3-Coder | 25.0 | 18.3 | 7.1 | 7.1 | 19.0 | 14.5 |
| | GPT-5 | **49.4** | **47.0** | **13.1** | **13.1** | **37.1** | **35.5** |
| **RAG (Docs)** | DeepSeek-V3 | 33.5 | 22.6 | 9.5 | 9.5 | 25.4 | 18.1 |
| | ERNIE-4.5 | 13.4 | 12.8 | 3.6 | 3.6 | 10.1 | 9.7 |
| | Kimi-K2 | **34.8** | **34.1** | 11.9 | **16.7** | **27.0** | **28.2** |
| | Qwen3 | 12.8 | 12.2 | 1.2 | 4.8 | 8.9 | 9.7 |
| | Qwen3-Coder | 22.6 | 18.9 | 6.0 | 9.5 | 16.9 | 15.7 |
| | GPT-5 | **37.2** | 32.3 | **15.5** | **16.7** | **29.8** | 27.0 |
| **Agent** | Kimi-K2 (iFlow CLI) | 44.5 | 51.8 | 26.2 | 27.4 | 38.3 | 43.5 |
| | Qwen3-Coder (iFlow CLI) | 32.3 | 33.5 | 9.5 | 17.9 | 24.6 | 28.2 |
| | Qwen3-Coder (Qwen Code CLI) | 30.5 | 27.4 | 8.3 | 8.3 | 23.0 | 21.0 |
| | GPT-5 (Codex CLI) | <u>**87.2**</u> | <u>**87.8**</u> | <u>**67.9**</u> | <u>**65.5**</u> | <u>**80.6**</u> | <u>**80.2**</u> |

---

## Layout

```text
Results/
├── Text_to_Code/
│   ├── Direct/
│   ├── Syntax_Constrained/
│   ├── RAG(Code)/
│   ├── RAG(Doc)/
│   └── Agent/
├── Code_to_Code/        # same five method folders
├── Pass10/              # ten-sample Syntax-Constrained runs (Pass@10)
├── Python/              # Python baseline records
├── token_usage_text_to_code.json
└── token_usage_code_to_code.json
```

Inside every method folder there are three files per `(model, subset)` cell:

| File | Contents |
|:--|:--|
| `<model>_<subset>.jsonl` | Raw model generations, one task per line (`{"id", "solution"}`) |
| `<model>_<subset>.jsonl.records.jsonl` | Per-task evaluation result: `passed`, `failure_kind`, compiler/runtime stdout/stderr, elapsed time |
| `<model>_<subset>.jsonl.summary.json` | Aggregate stats for the cell: pass rate, compile rate, failure-kind counts |

`<subset>` is `HumanEval` or `ClassEval`. RAG variants append `_code` or `_doc` to the basename to record which corpus was retrieved.

The two `token_usage_*.json` files report input/output token totals per cell, used to produce the token-cost figures above.

### Pass@10

`Pass10/` holds the ten-sample Syntax-Constrained runs reported in the discussion section of the paper. Naming differs slightly:

| File | Contents |
|:--|:--|
| `<model>_<subset>_10samples_concurrent.jsonl` | Ten generated solutions per task |
| `<model>_<subset>_pass10.records.jsonl` | Per-sample evaluation result |
| `<model>_<subset>_pass10.summary.json` | Pass@10 / Pass@1 rates and token totals |

`timeout_rerun_results.json` records the small set of samples that hit the harness timeout on the first pass and were rerun.

All paths inside `summary.json` files are relative to this `Results/` directory.
