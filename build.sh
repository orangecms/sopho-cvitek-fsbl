#!/bin/sh

DDR_CFG=ddr2_1333_x16
DDR_CFG=ddr3_1866_x16
DDR_CFG=ddr3_2133_x16
DDR_CFG=ddr_auto_x16

make \
  CROSS_COMPILE=riscv64-linux-gnu- \
  CHIP_ARCH=cv181x \
  BOOT_CPU=riscv \
  DDR_CFG=$DDR_CFG
