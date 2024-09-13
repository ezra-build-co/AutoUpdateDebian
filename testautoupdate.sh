#!/bin/bash

# Get the current user
USER=$(whoami)

# Welcome message
echo "Welcome $USER"

# Echo start message with date and time
echo "Beginning autoupdate script"
date

# Update, upgrade, autoremove, and autoclean
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get autoclean

# Echo completion message with date and time
echo "Update script complete at"
date

# Provide options to the user
echo "Please choose an option:"
echo "1. Reboot the system"
echo "2. Shutdown the system"
echo "3. Exit the script"

read -p "Enter your choice [1-3]: " choice

case $choice in
    1)
        echo "Rebooting the system..."
        sudo reboot
        ;;
    2)
        echo "Shutting down the system..."
        sudo shutdown now
        ;;
    3)
        echo "Exiting the script with exit code 1."
        exit 1
        ;;
    *)
        echo "Invalid choice. Exiting the script with exit code 1."
        exit 1
        ;;
esac


