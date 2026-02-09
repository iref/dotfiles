#!/bin/zsh

set -e

# Install asdf via Homebrew (v0.16+)
brew install asdf

# Configure asdf data directory
export ASDF_DATA_DIR="${ASDF_DATA_DIR:-$HOME/.asdf}"
mkdir -p "$ASDF_DATA_DIR"

# Generate zsh completions
mkdir -p "${ASDF_DATA_DIR}/completions"
asdf completion zsh > "${ASDF_DATA_DIR}/completions/_asdf"

# Install plugins
asdf plugin add java
asdf plugin add elixir 
asdf plugin add python 
asdf plugin add nodejs

# Install tool versions
asdf install python 3.11.3
asdf install java adoptopenjdk-19.0.2+7
asdf install nodejs 20.2.0
asdf install elixir 1.14.5
