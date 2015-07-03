#!/sbin/busybox sh
cd /
dd if=/data/media/kitkat.img of=/dev/block/mmcblk0p9 
reboot
