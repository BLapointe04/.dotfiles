#!/bin/bash

# Remove .nanorc
rm -f ~/.nanorc

# Remove the custom bashrc source line
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove .TRASH directory
rm -rf ~/.TRASH


