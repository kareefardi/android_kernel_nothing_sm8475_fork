set -e

patch -d KernelSU-Next --forward -p1 \
< kernel_patches/next/0001-kernel-implement-susfs-v1.5.5-v1.5.7-KSUN-v1.0.8.patch
