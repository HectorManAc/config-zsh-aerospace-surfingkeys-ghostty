#!/bin/zsh
echo "⚙️  Instalando configuraciones..."
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.aerospace.toml ~/.aerospace.toml
ln -sf ~/dotfiles/surfingkeys.js ~/.surfingkeys.js
mkdir -p ~/.config/ghostty
ln -sf ~/dotfiles/ghostty/config ~/.config/ghostty/config
echo "✅ ¡Configuración enlazada con éxito!"
