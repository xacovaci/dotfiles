#!/bin/sh

set -eu

# Ensuring base directories exist
mkdir -p "$HOME/.config"
mkdir -p "$HOME/.emacs.d"

# Getting the path of dotfiles
DOTFILES="$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd -P)"

cd $DOTFILES
stow --target="$HOME" .

