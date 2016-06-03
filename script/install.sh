#!/bin/sh


echo "Installing gitconfig..."
echo ""
cp gitconfig $HOME/.gitconfig
echo ""
echo " + gitconfig installed."

echo "Copying vimrc..."
echo ""

cp vimrc $HOME/.vimrc

echo " + vimrc copied."
echo ""

echo "Installing Vundle..."
echo ""

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "  + Vundle installed"
echo ""

echo "Installing vim plugins..."
echo ""

vim +PluginInstall +qall

echo " + Vim plugins installed"

echo "Installing solarized theme for gnome terminal..."
echo ""

sh ./script/solarized.sh

echo " + Solarized installed"
echo ""

echo "Good Job! Your vimdotfiles are set now"
