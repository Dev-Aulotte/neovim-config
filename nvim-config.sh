#!/usr/bin/env bash

# Check if ther is a nvim directory in ~/.config
if [ -d ~/.config/nvim ]; then # If there is no nvim directory, create one
	read -p "There is already a nvim config in ~/.config/nvim. Do you want to update it? (y/n) " -n 1 -r
	echo ""

	if [[ $REPLY =~ ^[Yy]$ ]]; then
		echo "Nvim update..."
		rm -rf ~/.config/nvim ~/.config/nvim.bak
		echo ""
		echo "Nvim config updated!"
		echo ""
	else
		mv ~/.config/nvim ~/.config/nvim.bak
		mv ~/.local/share/nvim ~/.local/share/nvim.bak
		echo "Old nvim config moved to ~/.config/nvim.bak"
		echo ""
		cp -r nvim ~/.config/nvim
		echo "Neovim config added to ~/.config/nvim"
		echo ""
	fi
fi

