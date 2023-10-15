#!/usr/bin/env bash

# Check if user is root
if [ "$EUID" -ne 0 ]; then
	echo "Installing linux packages..."
	sudo apt-get install -y git vim tmux zsh curl
else
	apt-get install -y git vim tmux zsh curl
fi
