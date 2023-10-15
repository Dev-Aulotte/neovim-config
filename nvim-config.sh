#!/usr/bin/env bash

# Check if ther is a nvim directory in ~/.config
if [ ! -d ~/.config/nvim ]; then # If there is no nvim directory, create one
	cp -r nvim ~/.config/nvim
	echo "Neovim config added to ~/.config/nvim"
fi
