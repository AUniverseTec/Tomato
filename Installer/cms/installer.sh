#!/bin/bash

# Create the directory structure for Tomato OS
mkdir -p ~/TomatoOS/{boot,bin,lib,usr,etc,var,tmp}

# Create the files for Tomato OS
touch ~/TomatoOS/boot/kernel
touch ~/TomatoOS/bin/init
touch ~/TomatoOS/lib/libc.so.6
touch ~/TomatoOS/usr/bin/bash
touch ~/TomatoOS/etc/fstab
touch ~/TomatoOS/etc/passwd
touch ~/TomatoOS/var/log/syslog
touch ~/TomatoOS/tmp/example.txt

# Find the USB drive connected to the PC
USB_DRIVE=$(lsblk -d -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL | grep -i "usb" | awk '{print $1}')

# Mount the USB drive
sudo mount /dev/$USB_DRIVE /mnt

# Copy the Tomato OS files to the USB drive
sudo cp -r ~/TomatoOS/* /mnt/

# Unmount the USB drive
sudo umount /mnt

echo "Tomato OS files created and transferred to USB drive!"
