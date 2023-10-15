#!/usr/bin/env bash

# Ask if user has Neovim already installed
read -p "Do you have Neovim installed? [y/n]: "

# Check if user has Neovim installed
if [ $REPLY = "y" ]; then # If user has Neovim installed, continue
	./nvim-config.sh
elif [ $REPLY = "n" ]; then # If user does not have Neovim installed, exit the script
	./nvim-install.sh
	./nvim-config.sh
else # If user selected invalid choice, exit the script
	echo "Invalid choice. Exiting..."
	exit 1
fi

echo "You can now launch nvim"
echo ""
echo "Enjoy!"
exit 0
