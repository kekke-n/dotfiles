#!/bin/bash

# Create cursor directory if it doesn't exist
mkdir -p cursor

# Backup original files if they exist
if [ -f ~/Library/Application\ Support/Cursor/User/keybindings.json ]; then
    mv ~/Library/Application\ Support/Cursor/User/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json.bak
fi


if [ -f ~/Library/Application\ Support/Cursor/User/settings.json ]; then
    mv ~/Library/Application\ Support/Cursor/User/settings.json ~/Library/Application\ Support/Cursor/User/settings.json.bak
fi

# Copy files to cursor directory
cp ~/Library/Application\ Support/Cursor/User/keybindings.json.bak cursor/
cp ~/Library/Application\ Support/Cursor/User/settings.json.bak cursor/

# Create symbolic links
ln -sf ~/dotfiles/cursor/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json
ln -sf ~/dotfiles/cursor/settings.json ~/Library/Application\ Support/Cursor/User/settings.json

echo "Cursor settings have been linked to ~/dotfiles/cursor directory"
