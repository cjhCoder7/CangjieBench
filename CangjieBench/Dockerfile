FROM ubuntu:22.04

LABEL name="Cangjie_Sandbox"
LABEL version="1.0"
LABEL description="A sandbox environment for Cangjie evaluation, support HumanEval and ClassEval"

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    zsh \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple jsonlines flask

WORKDIR /workspace

COPY ClassEval_Cangjie.jsonl /workspace/ClassEval_Cangjie.jsonl
COPY HumanEval_Cangjie.jsonl /workspace/HumanEval_Cangjie.jsonl
COPY linux_x86_64_llvm /workspace/linux_x86_64_llvm
COPY cangjie /workspace/cangjie
COPY compile.sh /workspace/compile.sh
# COPY main.cj /workspace/main.cj
COPY app.py /workspace/app.py

EXPOSE 8080

CMD ["python3", "app.py"]