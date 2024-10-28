#!/bin/bash

# dd command automation

# Title
figlet -f slant dd
sleep 1

# Read disks
lsblk

# input
read -p "USB name [Ex: /dev/sdx]: " sdx

read -p "File iso tree [Ex: /path/to/file.iso]: " iso

echo "- - - - - - - - - - - - - - - - - - - - - - - - - - -"

# execute
sudo dd if=$iso of=$sdx bs=4M status=progress
