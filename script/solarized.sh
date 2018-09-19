#!/bin/zsh

function setup_base16() {
  echo "Setting terminal config for $1"
  echo "" >> $1
  echo "BASE16_SHELL=$HOME/.config/base16-shell" >> $1
  echo '[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"' >> $1
  source $1
}

echo "This script installs Solarized color theme for Terminal"
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

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

echo ""
echo " + Base16 Shell repo was cloned."

echo ""
echo " + Setting up Base16 Shell."

setup_base16 "$HOME/.zshrc"

echo "Running Base16-solarized-dark script"

base16_solarized-dark

echo "Good job! Solarized theme should be installed now!"
