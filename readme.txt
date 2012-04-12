How to use: cdpg_build_wifi_248.sh

1.  First, ensure you have the kernel sources (bw-kn-2.3.4 / lenovo_a1_07_kernel) somewhere on your computer.
    Either set the path to the source in the cdpg_build_wifi_248.sh or export the parameter LINUXDIR.
    Example: export LINUXDIR=/path/to/my/kernel

2.  Make sure you have the compiler (for example arm-2010q1 if you use the CodeSourcery toolchain) in your
    path variable.
    Example: export PATH=/opt/arm-2010q1/bin/:$PATH

3.  Please make sure that, if you use, for example, the android toolchain, you add CROSS_COMPILE=...
    at the end of the "make" command at the end of cdpg_build_wifi_248.sh!
    Example: make dhd-cdc-oob-gpl-debug CROSS_COMPILE=/path/to/toolchain/arm-eabi-4.4.0/bin/arm-eabi-
