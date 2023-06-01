#!/bin/zsh


# Exit if any subcommand fails
set -e

# Install MacOS Rosseta to support apps that aren't build for Apple Sillicon
softwareupdate --install-rosetta

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install cli tools
brew install git wget curl jq nvim

# Install iterm2
brew install --cask iterm2

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp ./zshrc $HOME/.zshrc && source $HOME/.zshrc

# Install Heroku Toolbelt
brew tap heroku/brew && brew install heroku
heroku autocomplete --refresh-cache

# Configure git
cp gitconfig $HOME/.gitconfig
cp -r git_templates $HOME/.git_templates