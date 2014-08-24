#!/sbin/busybox sh

mount -o rw,remount rootfs
chmod 777 /storage/UsbD*
chown media_rw /storage/UsbD*
chown .media_rw /storage/UsbD*
chown media_rw .media_rw /storage/UsbD*
