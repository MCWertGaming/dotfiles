#!/usr/bin/env bash

# Colors
COLOR_BLUE='\003[34m'
COLOR_ORANGE='\003[33m'
COLOR_GREEN='\003[32m'
COLOR_RED='\003[31m'
COLOR_RESET='\033[0m'

# Paths
DOTFILES_PATH='~/git/dotfiles'
CONFIG_PATH='~/.config/dotfiles.conf'
DEFAULT_CONFIG_PATH=${DORFILES_PATH}/.setup/default.conf

# setup default config

## place symlinks
# ccache
rm -f ~/.ccache/ccache.conf
cp $DOTFILES_PATH/.ccache/ccache.conf ~/.ccache/ccache.conf
# flameshot
rm -f ~/.config/flameshot/flameshot.ini
cp $DOTFILES_PATH/.config/flameshot/flameshot.ini ~/.config/flameshot/flameshot.ini
# i3-gaps
rm -f ~/.config/i3/config
cp $DOTFILES_PATH/.config/i3/config ~/.config/i3/config
# kitty
rm -f ~/.config/kitty/kitty.conf
ln -s $DOTFILES_PATH/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
# neofetch
rm -f ~/.config/neofetch/config.conf
cp $DOTFILES_PATH/.config/neofetch/config.conf ~/.config/neofetch/config.conf
# picom
rm -f ~/.config/picom.conf
cp $DOTFILES_PATH/.config/picom.conf ~/.config/picom.conf
# wallpaper
rm -f ~/.config/wallpaper.jpg
cp $DOTFILES_PATH/.config/wallpaper.jpg ~/.config/wallpaper.jpg

## caching directories
# user cache
rm -rf ~/.cache
ln -s /tmp ~/.cache
# cargo cache
rm -rf ~/.cargo
ln -s /tmp ~/.cargo
# ccache tmp
rm -rf ~/.ccache/tmp
ln -s /tmp ~/.ccache/tmp
