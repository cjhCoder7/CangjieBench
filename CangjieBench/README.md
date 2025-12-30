# 📦 CangjieBench Evaluation Sandbox

[**🇨🇳 中文**](./README_zh.md) | [**🌐 English**](./README.md)

> **Introduction**
> 
> This Docker sandbox serves as an evaluation environment for **HumanEval** and **ClassEval** benchmarks in the **Cangjie** programming language. Additionally, it provides an API to compile and execute arbitrary Cangjie code in a secure container.



## 📂 Directory Structure

Below is the file structure required for the project. Note that the Cangjie SDK and Stdx libraries must be downloaded manually (see [Prerequisites](#prerequisites)).

```text
.
├── app.py                      # Flask server providing API endpoints
├── cangjie/                    # [Not Downloaded] Cangjie 1.0 SDK
├── linux_x86_64_llvm/          # [Not Downloaded] Cangjie 1.0 Stdx library
├── ClassEval/                  # ClassEval detailed files (Cangjie & Python)
├── ClassEval_Cangjie.jsonl     # Data: ClassEval Cangjie dataset
├── HumanEval/                  # HumanEval detailed files (Cangjie & Python)
├── HumanEval_Cangjie.jsonl     # Data: HumanEval Cangjie dataset
├── compile.sh                  # Bash script to compile and run Cangjie code
├── Dockerfile                  # Configuration to build the Docker image
└── README.md                   # Documentation
```



## <span id="prerequisites">🛠️ Prerequisites

> ⚠️ Important Note:
> 
> You only need to complete the steps in this section if you plan to build the Docker image from scratch.
> 
> If you are using the pre-built image, the SDK and Stdx libraries are already included inside the container, so you can skip this section and jump directly to [Installation](#installation).

Due to licensing and size constraints, the Cangjie SDK and standard extensions (stdx) are not included in this repository. You must download and extract them into the root directory before building the Docker image.

### 1. Download Cangjie SDK

Download `cangjie-sdk-linux-x64-1.0.0.tar.gz` from the [official website](https://cangjie-lang.cn/en/download/1.0.0) or use the command below. Extract it to ensure the folder is named `cangjie`.

```bash
# Download
wget "https://cangjie-lang.cn/v1/files/auth/downLoad?nsId=142267&fileName=cangjie-sdk-linux-x64-1.0.0.tar.gz&objectKey=68637fc53bcda926055851db" -O cangjie-sdk-linux-x64-1.0.0.tar.gz

# Extract
tar xvf cangjie-sdk-linux-x64-1.0.0.tar.gz
```

### 2. Download Cangjie Stdx

Download `cangjie-stdx-linux-x64-1.0.0.1.zip` from [GitCode](https://gitcode.com/Cangjie/cangjie_stdx/releases/v1.0.0.1) or use the command below.

```bash
# Download
wget https://gitcode.com/Cangjie/cangjie_stdx/releases/download/v1.0.0.1/cangjie-stdx-linux-x64-1.0.0.1.zip

# Extract
unzip cangjie-stdx-linux-x64-1.0.0.1.zip
```



## <span id="installation">🚀 Installation

There are two ways to set up the sandbox: using a pre-built image or building from source.

### Pre-built Image (Recommended)

> **Note:** The pre-built `cangjie-sandbox.tar` (approx. 1.3GB) will be made publicly available via a direct download link upon the **acceptance of our paper**.

Once downloaded, load the image into Docker:

```bash
# Load image from tar file
docker load -i cangjie-sandbox.tar

# Verify installation
docker images | grep cangjie-sandbox
```

### Build from Source

Ensure you have completed the [Prerequisites](#prerequisites) step. Run the following command in the project root:

```bash
docker build -t cangjie-sandbox:1.0 .
```

Verify the build:

```bash
docker image ls
# Should show:
# REPOSITORY          TAG
# cangjie-sandbox     1.0
```



## 💻 Usage

### Start the Container

Run the server with the following command. The API listens on port `8080` inside the container.

```bash
# Basic run (Map host 8080 to container 8080)
docker run -it -p 8080:8080 cangjie-sandbox:1.0

# If you need to map to a different host port (e.g., 9000)
docker run -it -p 9000:8080 cangjie-sandbox:1.0
```

### Verify Status

```bash
# Check running containers
docker ps

# Check logs
docker logs <container_id>
```



## 🔌 API Documentation

The sandbox provides RESTful APIs for code evaluation and execution.

### 1. HumanEval Evaluation

Evaluate code generation based on HumanEval benchmarks.

* **URL:** `http://localhost:8080/evaluate_humaneval`
* **Method:** `POST`

**Request Body:**

```json
{
  "id": "String (Must match an ID in HumanEval_Cangjie.jsonl)",
  "timeout": "Integer (Milliseconds)",
  "solution": "String (The Cangjie code to evaluate)"
}
```

**Response:**

```json
{
    "passed": true,
    "message": "",
    "run_result": {
        "status": true,
        "return_code": 0,
        "stdout": "Program Output...",
        "stderr": null
    }
}
```

### 2. ClassEval Evaluation

Evaluate class-level code generation.

* **URL:** `http://localhost:8080/evaluate_classeval`
* **Method:** `POST`

**Request Body:**

```json
{
  "id": "String (Must match an ID in ClassEval_Cangjie.jsonl)",
  "timeout": "Integer (Milliseconds)",
  "solution": "String (The Cangjie code to evaluate)"
}
```

**Response:**

```json
{
    "passed": true,
    "message": "",
    "main_function_passed": true,
    "run_result": {
        "status": true,
        "return_code": 0,
        "stdout": "Program Output...",
        "stderr": null
    }
}
```

### 3. Code Execution

Compile and run arbitrary Cangjie code.

* **URL:** `http://localhost:8080/run_code`
* **Method:** `POST`

**Request Body:**

```json
{
  "timeout": "Integer (Milliseconds)",
  "solution": "String (The Cangjie code to run)"
}
```

**Response:**

```json
{
    "message": "",
    "output": "Standard Output Content",
    "run_result": {
        "status": true,
        "return_code": 0,
        "stdout": "...",
        "stderr": "..."
    }
}
```