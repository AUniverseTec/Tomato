#!/bin/bash

# Identify the USB device
USB_DEVICE=$(lsblk | grep -o "/dev/sd[b-z][1-9]")

# Check if USB device is found
if [ -z "$USB_DEVICE" ]; then
  echo "USB device not found"
  exit 1
fi

# Mount the USB device
sudo mkdir /mnt/usb
sudo mount $USB_DEVICE /mnt/usb

# Copy the file or folder
cp /path/to/Tomato.rar /mnt/usb/
# or
# cp -r /path/to/Tomato /mnt/usb/

# Unmount the USB device
sudo umount /mnt/usb

#  replace /path/to/Tomato.rar or /path/to/Tomato with the actual path to the file or folder you want to transfer
