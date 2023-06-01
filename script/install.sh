#!/bin/zsh

# Exit if any subcommand fails
set -e

zsh ./script/system.sh
zsh ./script/asdf.sh
zsh ./script/vim.sh

echo "Good Job! Your dotfiles are set now"
