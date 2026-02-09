#!/bin/zsh


# Exit if any subcommand fails
set -e

# Install MacOS Rosseta to support apps that aren't build for Apple Sillicon
softwareupdate --install-rosetta

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install cli tools
brew install git wget curl jq httpie asdf pinentry-mac

# Modern terminal stack
brew install --cask ghostty
brew install antidote fzf atuin starship zsh-autosuggestions zsh-syntax-highlighting bat

# Install Heroku Toolbelt
brew tap heroku/brew && brew install heroku
heroku autocomplete --refresh-cache
