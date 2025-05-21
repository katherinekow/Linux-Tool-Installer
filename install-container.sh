#!/bin/bash
# Installs Docker and Podman

echo "Installing container tools..."

if command -v apt >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y docker.io podman
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y docker podman
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -Sy --noconfirm docker podman
elif command -v yum >/dev/null 2>&1; then
    sudo yum install -y docker podman
else
    echo "Unsupported package manager"
    exit 1
fi

echo "Container tools installed."