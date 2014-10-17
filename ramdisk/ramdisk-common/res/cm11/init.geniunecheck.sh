#!/sbin/busybox sh
# bestmjh47's kernel feature.

[ -e /system/bestmjh47 ] || reboot 
mount -o rw,remount rootfs
[ -e /cm ] || sh init.cmflash.sh
rm -rf init.geniunecheck.sh
