#!/usr/bin/env bash

echo "Install node deps"
npm install

echo "Installing Nerd Font font-patcher"
[ -d "font-patcher" ] && rm -rf font-patcher
curl -fsSL https://github.com/ryanoasis/nerd-fonts/releases/download/latest/FontPatcher.zip \
	--output font-patcher.zip
unzip font-patcher.zip -d font-patcher
rm font-patcher.zip
