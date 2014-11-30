cd ramdisk/ramdisk-common
find . | cpio -o -H newc | gzip > ../boot.img-ramdisk.gz
cd ../../
mkbootimg --base 0x10000000 --pagesize 2048 --kernel zImage --ramdisk ramdisk/boot.img-ramdisk.gz -o ramdisk/boot.img
cd ramdisk
zip -r Multiboot-E300S-bestmjh47_kernel_CM.zip META-INF boot.img
mv -v Multiboot-E300S-bestmjh47_kernel_CM.zip ../
cd ../
