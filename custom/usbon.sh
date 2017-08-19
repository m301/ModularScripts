#!/usr/bin/env sh
echo "Setting usb to permanent on..."
echo on | sudo tee /sys/bus/usb/devices/*/power/level >/dev/null