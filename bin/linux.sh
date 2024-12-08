#!/bin/bash

# Check if the OS is Linux
if [ "$(uname)" != "Linux" ]; then
    echo "Error: This script is only for Linux systems." >> linuxsetup.log
    exit 1
fi

# Create .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# Backup existing .nanorc
if [ -f ~/.nanorc ]; then
    mv ~/.nanorc ~/.bup_nano
    echo "Renamed existing .nanorc to .bup_nano" >> linuxsetup.log
fi

# Overwrite .nanorc with etc/nanorc
cp ~/.dotfiles/etc/nanorc ~/.nanorc

# Add custom bashrc source
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

