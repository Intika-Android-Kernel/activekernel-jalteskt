#!/sbin/busybox sh

mount -o rw,remount rootfs
chmod 777 /storage/usbdisk
chown media_rw /storage/usbdisk
chown .media_rw /storage/usbdisk
chown media_rw .media_rw /storage/usbdisk
