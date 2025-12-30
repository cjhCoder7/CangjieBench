# 📦 CangjieBench 评测沙箱

[**🌐 English**](./README.md) | [**🇨🇳 中文**](./README_zh.md)

> **简介**
> 
> 本 Docker 沙箱作为 **Cangjie（仓颉）** 编程语言的 **HumanEval** 和 **ClassEval** 基准测试的评测环境。此外，它还提供了一个 API，用于在安全容器中编译和执行任意仓颉代码。

---

## 📂 目录结构

以下是项目所需的文件结构。请注意，Cangjie SDK 和 Stdx 库必须手动下载（参见 [前置条件](#prerequisites)）。

```text
.
├── app.py                      # 提供 API 接口的 Flask 服务器
├── cangjie/                    # [未下载] Cangjie 1.0 SDK
├── linux_x86_64_llvm/          # [未下载] Cangjie 1.0 Stdx 库
├── ClassEval/                  # ClassEval 详细文件 (Cangjie & Python)
├── ClassEval_Cangjie.jsonl     # 数据: ClassEval Cangjie 数据集
├── HumanEval/                  # HumanEval 详细文件 (Cangjie & Python)
├── HumanEval_Cangjie.jsonl     # 数据: HumanEval Cangjie 数据集
├── compile.sh                  # 用于编译和运行仓颉代码的 Bash 脚本
├── Dockerfile                  # 构建 Docker 镜像的配置
└── README.md                   # 文档
```

---

## <span id="prerequisites">🛠️ 前置条件

> ⚠️ 重要提示：
> 如果您计划从头构建 Docker 镜像，则仅需完成本节中的步骤。
> 如果您使用的是预构建镜像，SDK 和 Stdx 库已包含在容器中，因此您可以跳过本节，直接跳转到 [安装](#installation)。

由于许可和大小限制，本仓库不包含 Cangjie SDK 和标准扩展（stdx）。您必须在构建 Docker 镜像之前下载并将它们解压到根目录中。

### 1. 下载 Cangjie SDK

从 [官方网站](https://cangjie-lang.cn/en/download/1.0.0) 下载 `cangjie-sdk-linux-x64-1.0.0.tar.gz` 或使用下方命令。解压时请确保文件夹名称为 `cangjie`。

```bash
# 下载
wget "https://cangjie-lang.cn/v1/files/auth/downLoad?nsId=142267&fileName=cangjie-sdk-linux-x64-1.0.0.tar.gz&objectKey=68637fc53bcda926055851db" -O cangjie-sdk-linux-x64-1.0.0.tar.gz

# 解压
tar xvf cangjie-sdk-linux-x64-1.0.0.tar.gz
```

### 2. 下载 Cangjie Stdx

从 [GitCode](https://gitcode.com/Cangjie/cangjie_stdx/releases/v1.0.0.1) 下载 `cangjie-stdx-linux-x64-1.0.0.1.zip` 或使用下方命令。

```bash
# 下载
wget https://gitcode.com/Cangjie/cangjie_stdx/releases/download/v1.0.0.1/cangjie-stdx-linux-x64-1.0.0.1.zip

# 解压
unzip cangjie-stdx-linux-x64-1.0.0.1.zip
```

---

## <span id="installation">🚀 安装

设置沙箱有两种方法：使用预构建镜像或从源码构建。

### 预构建镜像（推荐）

> **注意：** 预构建的 `cangjie-sandbox.tar`（约 1.3GB）将在我们的**论文被录用**后通过直接下载链接公开发布。

下载完成后，将镜像加载到 Docker 中：

```bash
# 从 tar 文件加载镜像
docker load -i cangjie-sandbox.tar

# 验证安装
docker images | grep cangjie-sandbox
```

### 从源码构建

确保您已完成 [前置条件](#prerequisites) 步骤。在项目根目录下运行以下命令：

```bash
docker build -t cangjie-sandbox:1.0 .
```

验证构建：

```bash
docker image ls
# 应显示：
# REPOSITORY          TAG
# cangjie-sandbox     1.0
```

---

## 💻 使用方法

### 启动容器

使用以下命令运行服务器。API 在容器内部监听 `8080` 端口。

```bash
# 基础运行（将主机 8080 映射到容器 8080）
docker run -it -p 8080:8080 cangjie-sandbox:1.0

# 如需映射到不同的主机端口（例如 9000）
docker run -it -p 9000:8080 cangjie-sandbox:1.0
```

### 验证状态

```bash
# 检查运行中的容器
docker ps

# 检查日志
docker logs <container_id>
```

---

## 🔌 API 文档

本沙箱提供用于代码评测和执行的 RESTful API。

### 1. HumanEval 评测

基于 HumanEval 基准评估代码生成。

* **URL:** `http://localhost:8080/evaluate_humaneval`
* **Method:** `POST`

**请求体 (Request Body):**

```json
{
  "id": "String (必须匹配 HumanEval_Cangjie.jsonl 中的 ID)",
  "timeout": "Integer (毫秒)",
  "solution": "String (待评测的仓颉代码)"
}
```

**响应 (Response):**

```json
{
    "passed": true,
    "message": "",
    "run_result": {
        "status": true,
        "return_code": 0,
        "stdout": "程序输出...",
        "stderr": null
    }
}
```

### 2. ClassEval 评测

评估类级别的代码生成。

* **URL:** `http://localhost:8080/evaluate_classeval`
* **Method:** `POST`

**请求体 (Request Body):**

```json
{
  "id": "String (必须匹配 ClassEval_Cangjie.jsonl 中的 ID)",
  "timeout": "Integer (毫秒)",
  "solution": "String (待评测的仓颉代码)"
}
```

**响应 (Response):**

```json
{
    "passed": true,
    "message": "",
    "main_function_passed": true,
    "run_result": {
        "status": true,
        "return_code": 0,
        "stdout": "程序输出...",
        "stderr": null
    }
}
```

### 3. 代码执行

编译并运行任意仓颉代码。

* **URL:** `http://localhost:8080/run_code`
* **Method:** `POST`

**请求体 (Request Body):**

```json
{
  "timeout": "Integer (毫秒)",
  "solution": "String (待运行的仓颉代码)"
}

```

**响应 (Response):**

```json
{
    "message": "",
    "output": "标准输出内容",
    "run_result": {
        "status": true,
        "return_code": 0,
        "stdout": "...",
        "stderr": "..."
    }
}
```