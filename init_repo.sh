#!/bin/bash

# Banner
echo " "
echo "     __  ____      __  ____ _____    "
echo "    /  |/  (______/ /_/ __ / ___/    "
echo "   / /|_/ / / ___/ __/ / / \__ \     "
echo "  / /  / / (__  / /_/ /_/ ___/ /     "
echo " /_/  /_/_/____/\__/\____/____/      "
echo "                                     "

# Go one step back in the directory structure
echo "Navigating one step back in the directory structure..."
cd ..

# Create the mist directory if it doesn't exist
echo "Creating 'mist' directory if it doesn't exist..."
mkdir -p mist

# Navigate to the mist directory
cd mist || { echo "Mist directory does not exist"; exit 1; }

# Initialize the repo
echo "Initializing the repository..."
repo init -u https://github.com/Project-Mist-OS/manifest -b 15 --git-lfs

# Sync the repository
echo "Syncing the repository..."
repo sync -c -j66 --force-sync --no-clone-bundle --no-tags --optimized-fetch

echo "Repository initialized and synced successfully."
