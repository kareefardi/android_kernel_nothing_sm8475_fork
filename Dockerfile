FROM ubuntu

RUN apt update && apt install -y make ccache clang flex bison llvm lld libssl-dev bc lz4 fakeroot cpio
