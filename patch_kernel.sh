patch --forward -p1 --forward < kernel_patches/next/next_hooks.patch
patch --forward -p1 --forward < susfs4ksu/kernel_patches/50_add_susfs_in_gki-android13-5.10.patch
patch -d KernelSU-Next -p1 --forward < susfs4ksu/kernel_patches/KernelSU/10_enable_susfs_for_ksu.patch

patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_apk_sign.c.patch
patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_core_hook.c.patch
patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_kernel_compat.c.patch
patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_ksud.c.patch
patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_rules.c.patch
patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_selinux.c.patch
patch -d KernelSU-Next -p1 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_sucompat.c.patch

