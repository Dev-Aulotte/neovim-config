#!/usr/bin/env bash

# Check if ther is a nvim directory in ~/.config
if [ -d ~/.config/nvim ]; then # If there is no nvim directory, create one
	mv ~/.config/nvim ~/.config/nvim.bak
	mv ~/.local/share/nvim ~/.local/share/nvim.bak
	echo "Old nvim config moved to ~/.config/nvim.bak"
	echo ""
fi

cp -r nvim ~/.config/nvim
echo "Neovim config added to ~/.config/nvim"
echo ""
