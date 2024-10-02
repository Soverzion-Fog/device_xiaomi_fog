# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone https://github.com/Soverzion-HQ/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone -b luna-staging https://github.com/Asyanx/sea_kernel_xiaomi_sm6225 kernel/xiaomi/fog
cd kernel/xiaomi/fog
git reset --hard 036a81dd0ad2e9b8d618d0751c50bf0ed0a66eea
git revert --no-edit df6112d9b117bc4592a64e3cdf7883da033d42d0
cd ../../..

# Clone MiuiCamera
git clone -b uvite-sm6225 https://gitlab.com/soverzion-hq/proprietary_vendor_xiaomi_camera vendor/xiaomi/camera

# Clone LineageOS' hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# Clone sign key
git clone https://github.com/Soverzion-HQ/vendor_lineage-priv vendor/lineage-priv

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..
