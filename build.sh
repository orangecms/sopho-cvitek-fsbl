#!/bin/sh

# https://github.com/milkv-duo/duo-files/blob/main/duo-s/datasheet/SG2000_Preliminary_Datasheet_V1.0-alpha_CN.pdf
# 内建 DRAM
# - DDR3 16bitx1, 最高速率达 1866Mbps, 容量 4Gbit (512MB)

DDR_CFG=ddr2_1333_x16
DDR_CFG=ddr3_1866_x16
# DDR_CFG=ddr3_2133_x16
# DDR_CFG=ddr_auto_x16

make \
  CROSS_COMPILE=riscv64-linux-gnu- \
  CHIP_ARCH=cv181x \
  BOOT_CPU=riscv \
  DDR_CFG=$DDR_CFG
