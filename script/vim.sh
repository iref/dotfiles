#!/bin/zsh

# Exit if any subcommand fails
set -e

brew install nvim

mkdir -p $HOME/.config/nvim
cp vimrc $HOME/.config/nvim/init.vim

# Install vim-plug and vim plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > /dev/null

nvim +PlugInstall +qall > /dev/null

# Copy vimrc_background
cp vimrc_background $HOME/.vimrc_background