#!/bin/bash

# Navigate to the mist directory
cd ../
cd mist || { echo "Mist directory does not exist"; exit 1; }

# Cloning predefined repositories
echo "Cloning required repositories..."

# Clone the repositories
git clone https://github.com/ShukakuZa/device_xiaomi_surya.git -b 15.0 device/xiaomi/surya
git clone https://github.com/crdroidandroid/android_hardware_xiaomi.git -b 15.0 hardware/xiaomi
git clone https://github.com/crdroidandroid/android_kernel_xiaomi_surya.git -b 15.0 kernel/xiaomi/surya
git clone https://gitlab.com/crdroidandroid/android_vendor_miuicamera.git -b leica-5.0-surya vendor/xiaomi/miuicamera
git clone https://github.com/ShukakuZa/vendor_xiaomi_surya.git -b 15 vendor/xiaomi/surya

echo "Repositories cloned successfully."
