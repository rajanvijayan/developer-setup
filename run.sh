#!/bin/bash

# Detect OS type
os_type="$(uname -s)"

case "${os_type}" in
    Darwin*)
        echo "Detected macOS"
        bash ./bin/mac_setup.sh
        ;;
    Linux*)
        echo "Detected Linux"
        bash ./bin/linux_setup.sh
        ;;
    *)
        echo "Unsupported OS: ${os_type}"
        exit 1
        ;;
esac