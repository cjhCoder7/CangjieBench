# 📦 CangjieBench Evaluation Sandbox

<p align="center">
    <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a> &nbsp;|&nbsp; <a href="./README.md"><strong>🌐 English</strong></a>
</p>

> This Docker sandbox serves as an evaluation environment for **HumanEval** and **ClassEval** benchmarks in the **Cangjie** programming language. It also provides an API to compile and execute arbitrary Cangjie code in a secure, isolated container.

---

## Table of Contents

- [Directory Structure](#-directory-structure)
- [Prerequisites](#%EF%B8%8F-prerequisites)
- [Installation](#-installation)
- [Usage](#-usage)
- [API Documentation](#-api-documentation)

---

## 📂 Directory Structure

```text
.
├── app.py                      # Flask + Gunicorn server providing API endpoints
├── cangjie/                    # [Manual Download] Cangjie 1.0 SDK
├── linux_x86_64_llvm/          # [Manual Download] Cangjie 1.0 Stdx library
├── ClassEval/                  # ClassEval detailed files (Cangjie & Python)
├── ClassEval_Cangjie.jsonl     # ClassEval Cangjie dataset
├── HumanEval/                  # HumanEval detailed files (Cangjie & Python)
├── HumanEval_Cangjie.jsonl     # HumanEval Cangjie dataset
├── compile.sh                  # Bash script to compile and run Cangjie code
├── Dockerfile                  # Docker image configuration
└── README.md                   # This file
```

---

## 🛠️ Prerequisites

> [!NOTE]
> You only need to complete this section if you plan to **build the Docker image from scratch**.
> If you are using the pre-built image, the SDK and Stdx libraries are already included &mdash; skip directly to [Installation](#-installation).

Due to licensing and size constraints, the Cangjie SDK and standard extensions (stdx) are **not** included in this repository.

### 1. Download Cangjie SDK

Download from the [official website](https://cangjie-lang.cn/en/download/1.0.0) or use the commands below. Ensure the extracted folder is named `cangjie`.

```bash
# Download
wget "https://cangjie-lang.cn/v1/files/auth/downLoad?nsId=142267&fileName=cangjie-sdk-linux-x64-1.0.0.tar.gz&objectKey=68637fc53bcda926055851db" \
  -O cangjie-sdk-linux-x64-1.0.0.tar.gz

# Extract
tar xvf cangjie-sdk-linux-x64-1.0.0.tar.gz
```

### 2. Download Cangjie Stdx

Download from [GitCode](https://gitcode.com/Cangjie/cangjie_stdx/releases/v1.0.0.1) or use the commands below.

```bash
# Download
wget https://gitcode.com/Cangjie/cangjie_stdx/releases/download/v1.0.0.1/cangjie-stdx-linux-x64-1.0.0.1.zip

# Extract
unzip cangjie-stdx-linux-x64-1.0.0.1.zip
```

---

## 🚀 Installation

There are two ways to set up the sandbox.

### Option A &mdash; Pre-built Image (Recommended)

> [!NOTE]
> The pre-built `cangjie-sandbox.tar` (~1.3 GB) will be made publicly available upon the **acceptance of our paper**.

```bash
# Load image
docker load -i cangjie-sandbox.tar

# Verify
docker images | grep cangjie-sandbox
```

### Option B &mdash; Build from Source

Make sure you have completed the [Prerequisites](#%EF%B8%8F-prerequisites) step first.

```bash
# Build
docker build -t cangjie-sandbox:1.0 .

# Verify
docker image ls
# REPOSITORY          TAG
# cangjie-sandbox     1.0
```

---

## 💻 Usage

### Start the Container

The container uses **Gunicorn** as a production WSGI server with concurrent request support.

```bash
# Basic run (host:8080 -> container:8080)
docker run -it -p 8080:8080 cangjie-sandbox:1.0

# Map to a different host port
docker run -it -p 9000:8080 cangjie-sandbox:1.0

# Custom concurrency settings
docker run -it -p 8080:8080 \
  -e GUNICORN_WORKERS=8 \
  -e GUNICORN_THREADS=4 \
  cangjie-sandbox:1.0
```

### Concurrency Configuration

| Variable | Default | Description |
|:--|:--|:--|
| `GUNICORN_WORKERS` | `4` | Number of Gunicorn worker processes |
| `GUNICORN_THREADS` | `2` | Number of threads per worker |
| `APP_PORT` | `8080` | Port the server listens on |

> [!TIP]
> A good starting point is **2 &times; CPU cores** for workers. Increase threads if your workload is I/O-bound.

### Verify Status

```bash
docker ps                      # Check running containers
docker logs <container_id>     # Check logs
```

---

## 🔌 API Documentation

The sandbox provides three RESTful endpoints for code evaluation and execution.

> **Base URL:** `http://localhost:8080`

### 1. HumanEval Evaluation

Evaluate function-level code generation against HumanEval test cases.

```
POST /evaluate_humaneval
```

**Request Body:**

| Field | Type | Description |
|:--|:--|:--|
| `id` | `int` | Must match an ID in `HumanEval_Cangjie.jsonl` |
| `timeout` | `int` | Timeout in seconds |
| `solution` | `string` | The Cangjie code to evaluate |

<details>
<summary><b>Example Response (passed)</b></summary>

```json
{
    "passed": true,
    "message": "",
    "failure_kind": "passed",
    "run_result": {
        "status": [true],
        "failure_kind": ["passed"],
        "return_code": [0],
        "stdout": ["All tests passed."],
        "stderr": [null]
    }
}
```
</details>

<details>
<summary><b>Example Response (failed)</b></summary>

```json
{
    "passed": false,
    "message": "error: expected '(', found 'i'",
    "failure_kind": "compile_error",
    "run_result": {
        "status": [false],
        "failure_kind": ["compile_error"],
        "return_code": [1],
        "stdout": [""],
        "stderr": ["error: expected '(', found 'i'"]
    }
}
```
</details>

---

### 2. ClassEval Evaluation

Evaluate class-level code generation against multiple test methods.

```
POST /evaluate_classeval
```

**Request Body:**

| Field | Type | Description |
|:--|:--|:--|
| `id` | `string` | Must match an ID in `ClassEval_Cangjie.jsonl` |
| `timeout` | `int` | Timeout in seconds (per test) |
| `solution` | `string` | The Cangjie code to evaluate |

<details>
<summary><b>Example Response (passed)</b></summary>

```json
{
    "passed": true,
    "message": "",
    "failure_kind": "passed",
    "main_function_passed": true,
    "run_result": {
        "status": [true, true, true],
        "failure_kind": ["passed", "passed", "passed"],
        "return_code": [0, 0, 0],
        "stdout": ["...", "...", "..."],
        "stderr": [null, null, null]
    }
}
```
</details>

<details>
<summary><b>Example Response (partial failure)</b></summary>

```json
{
    "passed": false,
    "message": "",
    "failure_kind": "test_failure",
    "main_function_passed": true,
    "run_result": {
        "status": [false, true, true],
        "failure_kind": ["test_failure", "passed", "passed"],
        "return_code": [1, 0, 0],
        "stdout": ["fail", "...", "..."],
        "stderr": [null, null, null]
    }
}
```
</details>

---

### 3. Code Execution

Compile and run arbitrary Cangjie code.

```
POST /run_code
```

**Request Body:**

| Field | Type | Description |
|:--|:--|:--|
| `timeout` | `int` | Timeout in seconds |
| `solution` | `string` | The Cangjie code to run |

<details>
<summary><b>Example Response (passed)</b></summary>

```json
{
    "message": "",
    "failure_kind": "passed",
    "output": "Hello, Cangjie!",
    "run_result": {
        "status": [true],
        "failure_kind": ["passed"],
        "return_code": [0],
        "stdout": ["Hello, Cangjie!"],
        "stderr": [null]
    }
}
```
</details>

<details>
<summary><b>Example Response (compile error)</b></summary>

```json
{
    "message": "error: expected '(', found 'i'",
    "failure_kind": "compile_error",
    "output": null,
    "run_result": {
        "status": [false],
        "failure_kind": ["compile_error"],
        "return_code": [1],
        "stdout": [""],
        "stderr": ["error: expected '(', found 'i'"]
    }
}
```
</details>
