#!/bin/zsh

brew install nvim

echo "Copying vimrc..."
echo ""

mkdir -p $HOME/.config/nvim
cp vimrc $HOME/.config/nvim/init.vim

echo " + vimrc copied."
echo ""

echo "Installing vim-plug..."
echo ""

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > /dev/null


echo "  + vim-plug installed"
echo ""

echo "Installing vim plugins..."
echo ""

nvim +PlugInstall +qall > /dev/null

echo " + Vim plugins installed"