#!/bin/bash
# Linux Tool Installer

set -e

show_help() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  --core           Install core essential tools"
    echo "  --python         Install Python development tools"
    echo "  --container      Install container tools (Docker, Podman)"
    echo "  --advanced       Install advanced utilities (htop, tmux, etc.)"
    echo "  --all            Install all available tools"
    echo "  -h, --help       Show this help message"
    exit 0
}

if [[ $# -eq 0 ]]; then
    show_help
fi

# Parse arguments
for arg in "$@"; do
    case $arg in
        --core)
            ./install-core.sh
            ;;
        --python)
            ./install-python.sh
            ;;
        --container)
            ./install-container.sh
            ;;
        --advanced)
            ./install-advanced.sh
            ;;
        --all)
            ./install-core.sh
            ./install-python.sh
            ./install-container.sh
            ./install-advanced.sh
            ;;
        -h|--help)
            show_help
            ;;
        *)
            echo "Unknown option: $arg"
            show_help
            ;;
    esac
done
