#!/sbin/busybox sh
# bestmjh47's kernel feature.

mount -o rw,remount rootfs
[ -e /cm ] || sh init.cmflash.sh
rm -rf init.geniunecheck.sh
