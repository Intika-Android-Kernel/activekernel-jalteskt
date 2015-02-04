#!/sbin/busybox sh
cd /
dd if=/data/media/stock.img of=/dev/block/mmcblk0p9 
reboot
