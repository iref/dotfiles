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

echo "Copying vim plugins..."
echo ""

if [ ! -d $HOME/.vim ]
then
  mkdir $HOME/.vim
fi

cp -r vim/ $HOME/.vim

echo " + vim plugins copied..."
echo ""

echo "Installing solarized theme for gnome terminal..."
echo ""

sh solarized.sh

echo " + Solarized installed"
echo ""

echo "Good Job! Your vimdotfiles are set now"


