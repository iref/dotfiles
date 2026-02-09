#!/bin/zsh

# Exit if any subcommand fails
set -e

# Install neovim
brew install nvim

# Symlink nvim config
mkdir -p $HOME/.config
ln -sf $(pwd)/config/nvim $HOME/.config/nvim

# Create undo directory (referenced in set.lua)
mkdir -p $HOME/.vim/undodir

# Install plugins (lazy.nvim bootstraps itself, just sync)
nvim --headless "+Lazy! sync" +qa
