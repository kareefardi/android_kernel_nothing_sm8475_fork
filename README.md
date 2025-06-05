# Nothing Phone (2) KSU susfs kernel
This kernel is a [fork of arter97 pong kernel](https://github.com/arter97/android_kernel_nothing_sm8475) with added support for KernelSU Next and susfs.

## How to download
Go to [Actions section](https://github.com/ThePhaseless/android_kernel_nothing_sm8475/actions) and select the latest successfull build. The kernel will be in the artifacts section called `boot.img` inside `boot-image.zip`

## Integrity pass
I was able to pass strong integrity with these modules:
- [susfs for kernelsu](https://github.com/sidex15/susfs4ksu-module)
- [TrickyStore](https://github.com/5ec1cff/TrickyStore) with [this addon](https://github.com/KOWX712/Tricky-Addon-Update-Target-List)
- [VB Meta Fixer](https://github.com/reveny/Android-VBMeta-Fixer)

With these configuration steps:
- Install KSU Next app and all modules
- Reboot your phone
- Go to the app and click on Logs icon for Tricky Addon
- In menu select in this order: Select All, Deselct Unnecessary, **Set Valud Keybox**.
- Click Save
- Reboot your phone
- Done
