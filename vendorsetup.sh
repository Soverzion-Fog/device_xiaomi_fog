# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b fourteen https://github.com/Soverzion-HQ/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b another-reset https://github.com/alternoegraha/wwy_kernel_xiaomi_fog_rebase kernel/xiaomi/fog

# Clone MiuiCamera
git clone -b uvite-sm6225 https://gitlab.com/soverzion-hq/proprietary_vendor_xiaomi_camera vendor/xiaomi/camera

# Clone LineageOS' hardware/xiaomi
git clone -b fog-lineage-21 https://github.com/Soverzion-HQ/hardware_xiaomi hardware/xiaomi

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..
