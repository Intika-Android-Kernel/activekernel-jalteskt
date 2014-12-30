cd ramdisk/ramdisk-common
find . | fakeroot cpio -H newc -o | lzma -e -9 > ../boot.img-ramdisk.cpio.lzma
cd ../../
mkbootimg --base 0x10000000 --pagesize 2048 --kernel zImage --ramdisk ramdisk/boot.img-ramdisk.cpio.lzma -o ramdisk/boot.img
cp -f ramdisk/boot.img ramdisk/data/media/stock.img
cp -f ramdisk/boot.img $HOME/kernel/cm11_*/ramdisk/data/media/stock.img
cp -f ramdisk/boot.img $HOME/kernel/cm11_*/ramdisk/boot.img
cd ramdisk
zip -r Multiboot_kernel_e300_v4.7.zip META-INF data boot.img
mv -v Multiboot_kernel_e300_v4.7.zip ../
cd ../
