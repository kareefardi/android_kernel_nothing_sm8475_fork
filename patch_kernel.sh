# cp ./susfs4ksu/kernel_patches/fs/* ./fs/
# cp ./susfs4ksu/kernel_patches/include/linux/* ./include/linux/
# patch --forward -p1 --forward < susfs4ksu/kernel_patches/50_add_susfs_in_gki-android13-5.10.patch
# patch --forward -p1 --forward < kernel_patches/next/next_hooks.patch
# patch -d KernelSU-Next -p1 --forward < susfs4ksu/kernel_patches/KernelSU/10_enable_susfs_for_ksu.patch

# patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_apk_sign.c.patch
# patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_core_hook.c.patch
# patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_kernel_compat.c.patch
# patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_ksud.c.patch
# patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_rules.c.patch
# patch -d KernelSU-Next -p0 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_selinux.c.patch
# patch -d KernelSU-Next -p1 --forward < kernel_patches/next/susfs_fix_patches/v1.5.9/fix_sucompat.c.patch



# # Apply core SUSFS patches
# cp ../susfs4ksu/kernel_patches/50_add_susfs_in_gki-android13-5.10.patch ./common/
# cd common
# patch -p1 < 50_add_susfs_in_gki-${{ inputs.android_version }}-${{ inputs.kernel_version }}.patch || true

# # Apply additional SUSFS patches for Android 13 5.15 compatibility

# # Apply KSU integration patches
# cd ../Wild_KSU
# cp ../../susfs4ksu/kernel_patches/KernelSU/10_enable_susfs_for_ksu.patch .
# patch -p1 < 10_enable_susfs_for_ksu.patch || true

# cp ../../kernel_patches/wild/susfs_fix_patches/v${SUSFS_VERSION}/fix_core_hook.c.patch ./
# patch -p1 < fix_core_hook.c.patch

# cp ../../kernel_patches/wild/susfs_fix_patches/v${SUSFS_VERSION}/fix_sucompat.c.patch ./
# patch -p1 < fix_sucompat.c.patch

# cp ../../kernel_patches/wild/susfs_fix_patches/v${SUSFS_VERSION}/fix_kernel_compat.c.patch ./
# patch -p1 < fix_kernel_compat.c.patch


# Copy SUSFS patches
cp ./susfs4ksu/kernel_patches/50_add_susfs_in_gki-android13-5.10.patch 
cp ./susfs4ksu/kernel_patches/fs/* ./fs/
cp ./susfs4ksu/kernel_patches/include/linux/* ./include/linux/

cd common
patch -p1 --fuzz=3 < 50_add_susfs_in_gki-android13-5.10.patch || true
