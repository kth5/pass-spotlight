#!/bin/bash

# Install script for pass.app
# This script will install the pass application to your Applications folder

echo "Installing pass..."

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Make the main executable script executable
chmod +x "$SCRIPT_DIR/pass.app/Contents/MacOS/pass"

# Copy the application to Applications folder
cp -R "$SCRIPT_DIR/pass.app" "/Applications/"

# Make sure the copied application is executable
chmod +x "/Applications/pass.app/Contents/MacOS/pass"

echo "pass has been installed to /Applications/"
echo ""
echo "You can now:"
echo "1. Open Spotlight (Cmd+Space) and type 'pass'"
echo "2. Or find it in your Applications folder"
echo ""
echo "Note: Make sure you have 'pass' installed via: brew install pass"
echo ""

# Check if pass is installed
if command -v pass &> /dev/null; then
    echo "✓ 'pass' command is available"
else
    echo "✗ 'pass' command not found. Please install it first:"
    echo "  brew install pass"
fi
