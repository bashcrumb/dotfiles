#!/usr/bin/env bash

DOTFILES="$HOME/dotfiles"

FILES=(
    ".bashrc"
    "i3/"
    "alacritty/"
    "i3status/"
    "nvim/"
    ".bash_aliases"
    ".vimrc"
)

echo "Installing dotfiles from $DOTFILES"

for file in "${FILES[0]}"; do
    target="$HOME/$file"
    mkdir -p "$(dirname "$target")"
    ln -sf "$DOTFILES/$file" "$target"
    echo "Linked $file -> $target"
done

echo "All dotfiles installed"
