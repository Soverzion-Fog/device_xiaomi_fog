# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b 13 https://github.com/Soerzion-HQ/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b fog-r-oss-staging https://github.com/alternoegraha/fog_kernel_xiaomi_sm6225 kernel/xiaomi/fog

# Clone LineageOS' hardware/xiaomi
git clone -b lineage-20 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# Clone MiuiCamera
git clone -b uvite-sm6225 https://gitlab.com/soverzion-hq/proprietary_vendor_xiaomi_camera vendor/xiaomi/camera

# Clone private keys
git clone https://github.com/Soverzion-HQ/vendor_lineage-priv vendor/lineage-priv

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..