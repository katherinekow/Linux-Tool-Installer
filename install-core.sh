#!/bin/bash
# Installs core tools: curl, git, vim

echo "Installing core tools..."

if command -v apt >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y curl git vim
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y curl git vim
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -Sy --noconfirm curl git vim
elif command -v yum >/dev/null 2>&1; then
    sudo yum install -y curl git vim
else
    echo "Unsupported package manager"
    exit 1
fi

echo "Core tools installed."