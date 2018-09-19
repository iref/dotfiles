#!/bin/zsh

# Exit if any subcommand fails
set -e


echo "Installing gitconfig..."
echo ""
cp gitconfig $HOME/.gitconfig
cp git_templates $HOME/.git_templates
echo ""
echo " + gitconfig installed."

echo "Copying vimrc..."
echo ""

cp vimrc_background $HOME/.vimrc_background
mkdir -p $HOME/.config/nvim
cp vimrc $HOME/.config/nvim/init.vim

echo " + vimrc copied."
echo ""

echo "Installing vim-plug..."
echo ""

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo "  + vim-plug installed"
echo ""

echo "Installing vim plugins..."
echo ""

vim +PlugInstall +qall

echo " + Vim plugins installed"

echo "Setup terminal colorscheme..."
echo ""

sh ./script/solarized.sh

echo " + Solarized installed"
echo ""

echo "Good Job! Your vimdotfiles are set now"
