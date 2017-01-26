# Flash to internal eMMC - kernel enumerates this, when SD card is in, as mmcblk1
INTERNAL_DEVICE_KERNEL = "mmcblk1"


### Information needed to write the 1st stage bootloader binary

# Partition onto which MLO needs to be flashed to
BOOTLOADER_FLASH_DEVICE = "mtdblock0"

# name of the 1st stage bootloader binary
BOOTLOADER_IMAGE = "MLO"

# block size to use when writing MLO
BOOTLOADER_BLOCK_SIZE_OFFSET = "512"

# number of blocks to skip from mtdblock0 when writing the MLO to it
BOOTLOADER_SKIP_OUTPUT_BLOCKS = "0"


### Information needed to write the 2nd stage bootloader binary

# Partition onto which u-boot.img needs to be flashed to
BOOTLOADER_FLASH_DEVICE_1 = "mtdblock1"

# name of the 2nd stage bootloader binary
BOOTLOADER_IMAGE_1 = "u-boot.img"

# block size to use when writing u-boot.img
BOOTLOADER_BLOCK_SIZE_OFFSET_1 = "512"

# number of blocks to skip from mtdblock1 when writing u-boot.img to it
BOOTLOADER_SKIP_OUTPUT_BLOCKS_1 = "0"
