#!/bin/bash

# Navigate to the mist directory
cd ../
cd mist || { echo "Mist directory does not exist"; exit 1; }

# Prompt the user to enter their device name (default or custom)
echo "Enter your device name (or press Enter to keep the default 'surya'):"
read -r device_name

# Set a default device name if none is provided
if [ -z "$device_name" ]; then
    device_name="surya"  # Default device name
fi

# Source the environment setup script
echo "Sourcing the environment setup..."
. build/envsetup.sh

# Run the mystify command with the specified device and user
echo "Running mystify on device: $device_name"
mistify $device_name user

# Start the build process
echo "Starting the build process..."
mist b

echo "Launch and build process completed."
