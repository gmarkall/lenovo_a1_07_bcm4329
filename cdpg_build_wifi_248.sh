#!/bin/bash

  MYDIR=`pwd`

  DHD_KO_DIR=$MYDIR/wifi

  if [ -z "$LINUXDIR" ]; then
	  cd /home/graham/android/ideapad_misc/lenovo_a1_07_kernel
	  LINUXDIR=`pwd`
  fi

  cd $MYDIR/bcm4329_fxn_248/src/dhd/linux
  DHD_DIR=`pwd`

  export MYDIR=$MYDIR
  export prod_name=$prod_name
  #export PATH=/host/sourcecode/arm-2010q1/bin/:$PATH
  export CROSS_COMPILE=arm-none-linux-gnueabi-
  export ARCH=arm
  export HOSTENV=linux
  export HOSTOS=unix
  export TARGETARCH=arm_le
  export TARGETENV=linuxarm_le
  export TARGETOS=unix
  export LINUXDIR=$LINUXDIR
  export LINUXVER=2.6.35
  export DHD_KO_DIR=$DHD_KO_DIR

  echo "=== build wifi driver ==="

  echo LINUXDIR: $LINUXDIR
  echo DHD_DIR: $DHD_DIR

  cd $DHD_DIR
  #make dhd-cdc-sdmmc-gpl-debug
  make dhd-cdc-oob-gpl-debug

