#!/usr/bin/env bash

# Ask user to select between linux or macos
echo "Select your OS:"
echo "1) Linux"
echo "2) MacOS"
echo "3) Exit"
echo ""

read -p "Enter your choice: " os

# Check if user selected linux or MacOS
if [ $os -eq 1 ]; then # If user selected linux, install linux packages
	# Run linux script from os/linux.sh
	./os/linux.sh
elif [ $os -eq 2 ]; then # If user selected MacOS, install MacOS packages
	# Run MacOS script from os/macos.sh
	./os/macos.sh
elif [ $os -eq 3 ]; then # If user selected exit, exit the script
	echo "Exiting..."
	exit 0
else # If user selected invalid choice, exit the script
	echo "Invalid choice. Exiting..."
	exit 1
fi

# Check if ther is a nvim directory in ~/.config
if [ ! -d ~/.config/nvim ]; then # If there is no nvim directory, create one
	cp -r nvim ~/.config/nvim
	echo "Neovim config added to ~/.config/nvim"
fi

echo "You can now launch nvim"
echo ""
echo "Enjoy!"
exit 0
