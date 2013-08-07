#!/bin/sh

echo "This script installs Solarized color theme to Gnome Terminal"
echo "So let's do this..."

if test ! $(which git)
then
  echo " x Git is required. If you are on Ubuntu run this:"
  echo "   sudo apt-get install git"
  exit -1
else
  echo " + Git is installed."
fi

echo ""

echo "Cloning needed GitHub repositories..."

git clone git@github.com:sigurdga/gnome-terminal-colors-solarized.git solarized

echo ""
echo " + Solarized for Gnome Terminal repo was cloned."

git clone git@github.com:seebi/dircolors-solarized.git solarized-dircolors

echo ""
echo " + Dircolors for Solarized theme repo was cloned."
echo ""

echo "Installing Solarized theme"

./solarized/install.sh

echo ""
echo " + Solarized theme is installed."
echo ""

echo "Installing dircolors."
echo ""

cp solarized-dircolors/dircolors.ansi-universal $HOME/.dircolors

echo "" >> $HOME/.profile
echo 'eval `dircolors $HOME/.dircolors' >> $HOME/.profile

echo ""
echo " + Dircolors for Solarized were installed."
echo ""
echo "Cleaning up"

rm -rf solarized
rm -rf solarized-dircolors

echo ""
echo " + Installation files are removed."
echo ""
echo "Refreshing terminal settings"

. $HOME/.profile

echo "Good job! Solarized theme should be installed now!"
