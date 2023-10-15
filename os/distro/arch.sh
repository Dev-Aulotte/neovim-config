#!/usr/bin/env bash

# Check if user is root
if [ $EUID -ne 0 ]; then
	echo "Installing neovim, lazygit and ripgrep..."
	sudo pacman -S neovim lazygit ripgrep
else
	echo "Installing neovim, lazygit and ripgrep..."
	pacman -S neovim lazygit ripgrep
fi
