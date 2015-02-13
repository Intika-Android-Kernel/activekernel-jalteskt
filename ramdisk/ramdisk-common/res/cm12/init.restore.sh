#!/sbin/busybox sh
mount -o rw,remount /efs
chattr +i /efs/nv_data.bin
chattr +i /efs/nv_data.bin.md5
mount -o rw,remount rootfs
rm -rf init.restore.sh
