#!/sbin/busybox sh
# bestmjh47's kernel feature.

mount -o rw,remount rootfs
[ -e /stock ] || sh init.stockflash.sh
rm -rf init.geniunecheck.sh
