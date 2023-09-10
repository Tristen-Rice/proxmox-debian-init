#!/bin/bash

# Update package list and existing packages
apt-get update
apt-get upgrade -y

# Install essential utilities
apt-get install -y sudo curl nano net-tools lsof dnsutils

# Additional utilities
apt-get install -y man-db git wget unzip vim htop less make gcc build-essential

# Dev tools
apt-get install -y gdb strace

# Containerization tools
apt-get install -y podman docker.io docker-compose

# Install and enable Cockpit
apt-get install -y cockpit
systemctl enable --now cockpit.socket

# Optional: Add more utilities here if needed

echo "All utilities and Cockpit installed and configured."
