#Custom Build Script
#Modified from build.sh of ThunderZap for Xperia L. Credits to varun.chitre15


#Build
ZIMAGE="/home/avinabadalal/kernel/arch/arm/boot/zImage"
IMAGE="/home/avinabadalal/kernel/arch/arm/boot/Image"
KERNEL_DIR="/home/avinabadalal/kernel"
BUILD_START=$(date +"%s")
export ARCH=arm
export SUBARCH=arm
export KBUILD_BUILD_USER="AvinabaDalal"
export KBUILD_BUILD_HOST="charizard"
if [ -a $KERNEL_DIR/arch/arm/boot/zImage ];
then
rm $ZIMAGE
rm $IMAGE
fi
make mint-zapdos_defconfig
make zImage

echo "Now make boot.img and run Odin.sh"
