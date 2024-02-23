#!/usr/bin/env bash

npm install

if [ ! -d "font-patcher" ]; then
    echo "Installing Nerd Font font-patcher"
    curl -fsSL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip \
        --output font-patcher.zip
    unzip font-patcher.zip -d font-patcher
	rm font-patcher.zip
fi
