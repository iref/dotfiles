#!/bin/zsh

# Exit if any subcommand fails
set -e

zsh ./script/system.sh
zsh ./script/asdf.sh
zsh ./script/vim.sh
zsh ./script/editors.sh

# Symlink zsh config
ln -sf $(pwd)/config/zsh/zshrc $HOME/.zshrc
ln -sf $(pwd)/config/zsh/zshenv $HOME/.zshenv
ln -sf $(pwd)/config/zsh/plugins.txt $HOME/.zsh_plugins.txt

# Symlink git config
ln -sf $(pwd)/config/git/config $HOME/.gitconfig
ln -sf $(pwd)/config/git/config-ikigai $HOME/.gitconfig-ikigai

# Symlink terminal configs
mkdir -p $HOME/.config/ghostty
mkdir -p $HOME/.config/atuin
ln -sf $(pwd)/config/ghostty/config $HOME/.config/ghostty/config
ln -sf $(pwd)/config/starship.toml $HOME/.config/starship.toml
ln -sf $(pwd)/config/atuin/config.toml $HOME/.config/atuin/config.toml

# Symlink GPG config
mkdir -p $HOME/.gnupg && chmod 700 $HOME/.gnupg
ln -sf $(pwd)/config/gnupg/gpg-agent.conf $HOME/.gnupg/gpg-agent.conf
chmod 600 $HOME/.gnupg/gpg-agent.conf

echo "Good Job! Your dotfiles are set now"
