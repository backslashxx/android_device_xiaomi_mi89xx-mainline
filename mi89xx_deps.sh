git clone --depth=1 --branch lineage-23.2-tweaked https://github.com/ximi-daisy-test/android_bootable_recovery/ bootable/recovery

# make sure to only keep vendopr/firmware
# git clone --depth=1 https://github.com/TheMuppets/proprietary_vendor_xiaomi_msm8953-common/ vendor/xiaomi/msm8953-common
# git clone --depth=1 --branch 16.2 https://github.com/ximi-daisy-test/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common

git clone https://github.com/backslashxx/android_device_xiaomi_mi89xx-mainline -b lineage-23.2-tweaked device/xiaomi/mi89xx-mainline

git clone --depth=1 --branch lineage-23.2 https://github.com/LineageOS/android_hardware_sony_timekeep hardware/sony/timekeep


./vendor/lineage/build/tools/roomservice.py mi89xx-mainline



# edit build/soong/ui/build/paths and allow it for meson
# then
# cd external/mesa3d 
# ninja -C build-host src/compiler/clc/mesa_clc
# ninja -C build-host src/compiler/spirv/vtn_bindgen2
# then add those to $PATH

# PREFIX/external/mesa3d/build-host/src/compiler/clc/:PREFIX/external/mesa3d/build-host/src/compiler/spirv/
