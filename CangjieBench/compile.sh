#!/bin/bash
set -e

BASE_DIR="/workspace"
WORK_DIR="${1:-.}"

source "${BASE_DIR}/cangjie/envsetup.sh"
export CANGJIE_STDX_PATH="${BASE_DIR}/linux_x86_64_llvm/static/stdx"
export LD_LIBRARY_PATH="${BASE_DIR}/cangjie/runtime/lib/linux_x86_64_llvm:${LD_LIBRARY_PATH}"

cd "${WORK_DIR}"
cjc main.cj -L $CANGJIE_STDX_PATH -lstdx.encoding.json -lstdx.serialization.serialization -lstdx.net.http -lstdx.net.tls -lstdx.logger -lstdx.log -lstdx.encoding.url -lstdx.encoding.json.stream -lstdx.crypto.keys -lstdx.crypto.x509 -lstdx.encoding.hex -lstdx.encoding.base64 -lstdx.crypto.crypto -lstdx.crypto.digest  -lstdx.compress.zlib -lstdx.compress -ldl --import-path $CANGJIE_STDX_PATH

./main
