#Custom Build Script for automation of build process.



#Build
ZIMAGE="/home/avinaba/android/kernel/mint/mint/arch/arm/boot/zImage"
IMAGE="/home/avinaba/android/kernel/mint/mint/arch/arm/boot/Image"
KERNEL_DIR="/home/avinaba/android/kernel/mint/mint/"
BUILD_START=$(date +"%s")
cd $KERNEL_DIR
export ARCH=arm
export SUBARCH=arm
export KBUILD_BUILD_USER="corphish"
export KBUILD_BUILD_HOST="Damned-PC"
export CROSS_COMPILE="/home/avinaba/android/toolchain/arm-eabi-4.4.3/bin/arm-eabi-"
if [ -a $KERNEL_DIR/arch/arm/boot/zImage ];
then
rm $ZIMAGE
rm $IMAGE
fi
make mint-zapdos_defconfig
make Image

./boot.sh


