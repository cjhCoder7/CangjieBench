# 📦 CangjieBench 评测沙箱

<p align="center">
    <a href="./README.md"><strong>🌐 English</strong></a> &nbsp;|&nbsp; <a href="./README_zh.md"><strong>🇨🇳 中文</strong></a>
</p>

> 本 Docker 沙箱作为 **Cangjie（仓颉）** 编程语言的 **HumanEval** 和 **ClassEval** 基准测试的评测环境。此外，它还提供 API 接口，用于在安全隔离的容器中编译和执行任意仓颉代码。

---

## 目录

- [目录结构](#-目录结构)
- [前置条件](#%EF%B8%8F-前置条件)
- [安装](#-安装)
- [使用方法](#-使用方法)
- [API 文档](#-api-文档)

---

## 📂 目录结构

```text
.
├── app.py                      # Flask + Gunicorn 服务器，提供 API 接口
├── cangjie/                    # [需手动下载] Cangjie 1.0 SDK
├── linux_x86_64_llvm/          # [需手动下载] Cangjie 1.0 Stdx 库
├── ClassEval/                  # ClassEval 详细文件（Cangjie & Python）
├── ClassEval_Cangjie.jsonl     # ClassEval 仓颉数据集
├── HumanEval/                  # HumanEval 详细文件（Cangjie & Python）
├── HumanEval_Cangjie.jsonl     # HumanEval 仓颉数据集
├── compile.sh                  # 编译和运行仓颉代码的 Bash 脚本
├── Dockerfile                  # Docker 镜像配置
└── README_zh.md                # 本文件
```

---

## 🛠️ 前置条件

> [!NOTE]
> 仅在你计划**从头构建 Docker 镜像**时才需要完成本节步骤。
> 如果使用预构建镜像，SDK 和 Stdx 库已包含在容器中 &mdash; 可直接跳转到 [安装](#-安装)。

由于许可和大小限制，本仓库**不包含** Cangjie SDK 和标准扩展（stdx）。

### 1. 下载 Cangjie SDK

从 [官方网站](https://cangjie-lang.cn/en/download/1.0.0) 下载，或使用下方命令。解压时请确保文件夹名称为 `cangjie`。

```bash
# 下载
wget "https://cangjie-lang.cn/v1/files/auth/downLoad?nsId=142267&fileName=cangjie-sdk-linux-x64-1.0.0.tar.gz&objectKey=68637fc53bcda926055851db" \
  -O cangjie-sdk-linux-x64-1.0.0.tar.gz

# 解压
tar xvf cangjie-sdk-linux-x64-1.0.0.tar.gz
```

### 2. 下载 Cangjie Stdx

从 [GitCode](https://gitcode.com/Cangjie/cangjie_stdx/releases/v1.0.0.1) 下载，或使用下方命令。

```bash
# 下载
wget https://gitcode.com/Cangjie/cangjie_stdx/releases/download/v1.0.0.1/cangjie-stdx-linux-x64-1.0.0.1.zip

# 解压
unzip cangjie-stdx-linux-x64-1.0.0.1.zip
```

---

## 🚀 安装

设置沙箱有两种方法。

### 方式 A &mdash; 预构建镜像（推荐）

> [!NOTE]
> 预构建的 `cangjie-sandbox.tar`（约 1.3 GB）将在**论文被录用**后公开发布。

```bash
# 加载镜像
docker load -i cangjie-sandbox.tar

# 验证
docker images | grep cangjie-sandbox
```

### 方式 B &mdash; 从源码构建

请确保已完成 [前置条件](#%EF%B8%8F-前置条件) 步骤。

```bash
# 构建
docker build -t cangjie-sandbox:1.0 .

# 验证
docker image ls
# REPOSITORY          TAG
# cangjie-sandbox     1.0
```

---

## 💻 使用方法

### 启动容器

容器使用 **Gunicorn** 作为生产级 WSGI 服务器，支持并发请求处理。

```bash
# 基础运行（主机:8080 -> 容器:8080）
docker run -it -p 8080:8080 cangjie-sandbox:1.0

# 映射到不同的主机端口
docker run -it -p 9000:8080 cangjie-sandbox:1.0

# 自定义并发配置
docker run -it -p 8080:8080 \
  -e GUNICORN_WORKERS=8 \
  -e GUNICORN_THREADS=4 \
  cangjie-sandbox:1.0
```

### 并发配置

| 变量 | 默认值 | 说明 |
|:--|:--|:--|
| `GUNICORN_WORKERS` | `4` | Gunicorn 工作进程数 |
| `GUNICORN_THREADS` | `2` | 每个工作进程的线程数 |
| `APP_PORT` | `8080` | 服务器监听端口 |

> [!TIP]
> 建议 workers 数设为 **2 &times; CPU 核心数**。如果负载以 I/O 为主，可适当增大线程数。

### 验证状态

```bash
docker ps                      # 检查运行中的容器
docker logs <container_id>     # 检查日志
```

---

## 🔌 API 文档

本沙箱提供三个 RESTful 端点，用于代码评测和执行。

> **基础 URL：** `http://localhost:8080`

### 1. HumanEval 评测

基于 HumanEval 测试用例评估函数级代码生成。

```
POST /evaluate_humaneval
```

**请求体：**

| 字段 | 类型 | 说明 |
|:--|:--|:--|
| `id` | `int` | 必须匹配 `HumanEval_Cangjie.jsonl` 中的 ID |
| `timeout` | `int` | 超时时间（秒） |
| `solution` | `string` | 待评测的仓颉代码 |

<details>
<summary><b>响应示例（通过）</b></summary>

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
<summary><b>响应示例（失败）</b></summary>

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

### 2. ClassEval 评测

基于多个测试方法评估类级代码生成。

```
POST /evaluate_classeval
```

**请求 Body：**

| 字段 | 类型 | 说明 |
|:--|:--|:--|
| `id` | `string` | 必须匹配 `ClassEval_Cangjie.jsonl` 中的 ID |
| `timeout` | `int` | 超时时间（秒，每个测试） |
| `solution` | `string` | 待评测的仓颉代码 |

<details>
<summary><b>响应示例（通过）</b></summary>

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
<summary><b>响应示例（部分失败）</b></summary>

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

### 3. 代码执行

编译并运行任意仓颉代码。

```
POST /run_code
```

**请求 Body：**

| 字段 | 类型 | 说明 |
|:--|:--|:--|
| `timeout` | `int` | 超时时间（秒） |
| `solution` | `string` | 待运行的仓颉代码 |

<details>
<summary><b>响应示例（通过）</b></summary>

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
<summary><b>响应示例（编译错误）</b></summary>

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
