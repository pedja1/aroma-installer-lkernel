#!/sbin/sh
mkdir '/tmp/working'
cat /dev/block/mmcblk0p3 > '/tmp/catboot.img'
'/tmp/unpackbootimg' -i '/tmp/catboot.img' -o '/tmp/working' -p 0x800
'/tmp/mkbootimg' --kernel '/tmp/zImage' --ramdisk '/tmp/working/catboot.img-ramdisk.gz' --base 80000000 --pagesize 2048 -o '/tmp/boot.img'
#dd if=/tmp/boot.img of=/dev/block/mmcblk0p3



