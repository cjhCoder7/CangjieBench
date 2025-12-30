source cangjie/envsetup.sh

export CANGJIE_STDX_PATH=linux_x86_64_llvm/static/stdx
export LD_LIBRARY_PATH=cangjie/runtime/lib/linux_x86_64_llvm:${LD_LIBRARY_PATH}

cjc main.cj -L $CANGJIE_STDX_PATH -lstdx.encoding.json -lstdx.serialization.serialization -lstdx.net.http -lstdx.net.tls -lstdx.logger -lstdx.log -lstdx.encoding.url -lstdx.encoding.json.stream -lstdx.crypto.keys -lstdx.crypto.x509 -lstdx.encoding.hex -lstdx.encoding.base64 -lstdx.crypto.crypto -lstdx.crypto.digest  -lstdx.compress.zlib -lstdx.compress -ldl --import-path $CANGJIE_STDX_PATH

./main