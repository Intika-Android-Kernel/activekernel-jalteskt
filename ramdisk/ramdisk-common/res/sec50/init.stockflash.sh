#!/sbin/busybox sh
cd /
dd if=/data/media/lollipop.img of=/dev/block/mmcblk0p9 
reboot
