#!/bin/bash

# ASCII Banner
echo "
 _______ _     _        _____           _       _     _        ____        _         ______           __  __ _     _    ____   _____ 
 |__   __| |   (_)      / ____|         (_)     | |   (_)      / __ \      | |       |  ____|         |  \/  (_)   | |  / __ \ / ____|
    | |  | |__  _ ___  | (___   ___ _ __ _ _ __ | |_   _ ___  | |  | |_ __ | |_   _  | |__ ___  _ __  | \  / |_ ___| |_| |  | | (___  
    | |  | '_ \| / __|  \___ \ / __| '__| | '_ \| __| | / __| | |  | | '_ \| | | | | |  __/ _ \| '__| | |\/| | / __| __| |  | |\___ \ 
    | |  | | | | \__ \  ____) | (__| |  | | |_) | |_  | \__ \ | |__| | | | | | |_| | | | | (_) | |    | |  | | \__ \ |_| |__| |____) |
    |_|  |_| |_|_|___/ |_____/ \___|_|  |_| .__/ \__| |_|___/  \____/|_| |_|_|\__, | |_|  \___/|_|    |_|  |_|_|___/\__|\____/|_____/ 
                                          | |                                  __/ |                                                  
                                          |_|                                 |___/                                                   
"

# Step 1: Run init_repo.sh to initialize and sync the repository
echo "Initializing and syncing repository..."
./init_repo.sh

# Step 2: Run clone_repos.sh to clone the required repositories
echo "Cloning required repositories..."
./clone_repos.sh

# Step 3: Run setup_and_build.sh to set up the environment and start the build process
echo "Setting up the environment and starting the build process..."
./setup_and_build.sh

echo "All processes completed successfully!"
