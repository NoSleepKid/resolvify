#!/usr/bin/env bash
set -e

# Determine install paths
BIN_DIR="/usr/local/bin"

echo "Installing resolvify..."

# Make sure bin directory exists
sudo mkdir -p "$BIN_DIR"

# Copy the script
sudo install -Dm755 "resolvify" "$BIN_DIR/resolvify"

echo "resolvify installed to $BIN_DIR"
echo "You can now run 'resolvify' from anywhere."
