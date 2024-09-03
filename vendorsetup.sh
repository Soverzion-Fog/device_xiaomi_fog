# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
<<<<<<< HEAD
git clone https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b reset https://github.com/alternoegraha/wwy_kernel_xiaomi_fog_rebase kernel/xiaomi/fog
=======
git clone -b fourteen https://github.com/asterixiverz/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone -b luna-staging https://github.com/Asyanx/sea_kernel_xiaomi_sm6225 kernel/xiaomi/fog
cd kernel/xiaomi/fog
git reset --hard 036a81dd0ad2e9b8d618d0751c50bf0ed0a66eea
git revert --no-edit df6112d9b117bc4592a64e3cdf7883da033d42d0
cd ../../..
>>>>>>> 52ed064 (fog: vendorsetup: Switch to Luna kernel)

# Clone LineageOS' hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..

# Fingerprint gesture fixup
cp device/xiaomi/fog/patches/0001-keyboards-make-KEY_HOME-override.patch frameworks/base
cd frameworks/base
git apply -v 0001-keyboards-make-KEY_HOME-override.patch
cd ../..