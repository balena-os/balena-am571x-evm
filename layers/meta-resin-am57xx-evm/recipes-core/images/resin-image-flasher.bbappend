IMAGE_FSTYPES_append = " resin-sdcard"

# Customize the flashing resin-sdcard
RESIN_BOOT_PARTITION_FILES_append = " \
    MLO: \
    u-boot.img: \
    "
