#!/bin/zsh

# Exit if any subcommand fails
set -e

echo "Install asdf and rbenv"
echo ""
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4 > /dev/null

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash >/dev/null 2>/dev/null
echo " + asdf and rbenv successfully installed"
echo ""

echo "Setup zshell..."
echo ""
cp zshrc $HOME/.zshrc
source $HOME/.zshrc
echo ""
echo " + zshell configured."

echo "Installing gitconfig..."
echo ""
cp gitconfig $HOME/.gitconfig
cp -r git_templates $HOME/.git_templates
echo ""
echo " + gitconfig installed."

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

vim +PlugInstall +qall > /dev/null

echo " + Vim plugins installed"

echo "Setup terminal colorscheme..."
echo ""

zsh ./script/solarized.sh > /dev/null
cp vimrc_background $HOME/.vimrc_background

echo " + Solarized installed"
echo ""

echo " Setup asdf..."
zsh ./script/asdf.sh > /dev/null
echo " + asdf is configured"
echo ""

echo "Good Job! Your vimdotfiles are set now"
