IMAGE="/home/avinaba/android/kernel/mint/mint/arch/arm/boot/Image"
KERNEL_DIR="/home/avinaba/android/kernel/mint/mint/"
echo "Making boot.img"
cd $KERNEL_DIR/boot
unpackbootimg -i boot.img
cp -r $IMAGE boot.img-Image
./mkbootimg --kernel boot.img-Image --ramdisk boot.img-ramdisk.gz --cmdline "console=ttyS1,115200n8" --base 0x00000000 --pagesize 2048 -o boot.img 
