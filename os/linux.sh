#!/usr/bin/env bash

# Ask for sudo privileges
echo "Do you have sudo privileges?"
echo "1) Yes"
echo "2) No"
echo "3) Exit"
echo ""

read -p "Enter your choice: " sudo

# Check if user selected yes or no
if [ $sudo -eq 1 ]; then
	# Ask for distro between Debian and Arch
	echo "Select your distro:"
	echo "1) Debian"
	echo "2) Arch"
	echo "3) Exit"
	echo ""

	read -p "Enter your choice: " distro

	# Check if user selected Debian or Arch
	if [ $distro -eq 1 ]; then # If user selected Debian, install Debian packages
		# Run Debian script from os/distro/debian.sh
		./os/distro/debian.sh
	elif [ $distro -eq 2 ]; then # If user selected Arch, install Arch packages
		# Run Arch script from os/distro/arch.sh
		./os/distro/arch.sh
	elif [ $distro -eq 3 ]; then # If user selected exit, exit the script
		echo "Exiting..."
		exit 0
	else # If user selected invalid choice, exit the script
		echo "Invalid choice. Exiting..."
		exit 1
	fi
elif [ $sudo -eq 2 ]; then
	# Download neovim
	curl -LO "https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"

	# Extract neovim
	tar -xzf nvim-linux64.tar.gz

	# Retrieve config file between bashrc and zshrc
	# If neither exist, use profile
	# Add alias to config file
	if [ -f ~/.bashrc ]; then
		echo "alias nvim=~/nvim-linux64/bin/nvim" >> ~/.bashrc
		echo "nvim command added to config file run 'source ~/.bashrc' to apply changes"
	elif [ -f ~/.zshrc ]; then
		echo "alias nvim=~/nvim-linux64/bin/nvim" >> ~/.zshrc
		echo "nvim command added to config file run 'source ~/.zshrc' to apply changes"
	else
		echo "alias nvim=~/nvim-linux64/bin/nvim" >> ~/.profile
		echo "nvim command added to config file run 'source ~/.profile' to apply changes"
	fi
elif [ $sudo -eq 3 ]; then
	echo "Exiting..."
	exit 0
else
	echo "Invalid choice. Exiting..."
	exit 1
fi
