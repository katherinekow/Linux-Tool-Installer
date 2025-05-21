#!/bin/bash
# Installs Python tools

echo "Installing Python tools..."

if command -v apt >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y python3 python3-pip python3-venv
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y python3 python3-pip
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -Sy --noconfirm python python-pip
elif command -v yum >/dev/null 2>&1; then
    sudo yum install -y python3 python3-pip
else
    echo "Unsupported package manager"
    exit 1
fi

pip3 install --user black flake8

echo "Python tools installed."