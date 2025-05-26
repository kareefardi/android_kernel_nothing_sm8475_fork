FROM debian:stable

RUN sudo apt update && sudo apt install -y make ccache clang flex bison llvm lld libssl-dev bc
