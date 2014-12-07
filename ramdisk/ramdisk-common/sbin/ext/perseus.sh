#!/sbin/busybox sh

mount -o remount,rw /system
/sbin/busybox mount -t rootfs -o remount,rw rootfs

# camera id
echo 0 > /data/CameraID.txt
chown media:audio /data/CameraID.txt
chmod 600 /data/CameraID.txt

mount -t tmpfs tmpfs /system/lib/modules
ln -s /lib/modules/* /system/lib/modules/

echo 2 > /sys/devices/system/cpu/sched_mc_power_savings

for i in /sys/block/*/queue/add_random;do echo 0 > $i;done

echo 0 > /proc/sys/kernel/randomize_va_space

echo 480 > /sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock
echo 50 > /sys/class/devfreq/exynos5-busfreq-mif/polling_interval
echo 70 > /sys/class/devfreq/exynos5-busfreq-mif/time_in_state/upthreshold

ln -s /res/synapse/uci /sbin/uci
/sbin/uci

if [ -d /system/etc/init.d ]; then
	/sbin/busybox run-parts /system/etc/init.d
fi;

/sbin/busybox mount -t rootfs -o remount,ro rootfs
mount -o remount,ro /system

