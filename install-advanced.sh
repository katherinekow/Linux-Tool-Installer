#!/bin/bash
# Installs htop, tmux, and other advanced tools

echo "Installing advanced tools..."

if command -v apt >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y htop tmux
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y htop tmux
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -Sy --noconfirm htop tmux
elif command -v yum >/dev/null 2>&1; then
    sudo yum install -y htop tmux
else
    echo "Unsupported package manager"
    exit 1
fi

echo "Advanced tools installed."
