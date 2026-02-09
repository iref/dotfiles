# --- MODERN STACK ---
# Initialize the completion system (Required for TAB to work)
# Add asdf completions to fpath (Homebrew path)
fpath=($(brew --prefix asdf)/share/zsh/site-functions $fpath)

autoload -Uz compinit
# Only regenerate completion cache once a day to keep it fast
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.m1) ]]; then
  compinit
else
  compinit -C
fi

# Initialize Antidote (Plugin Manager)
source $(brew --prefix antidote)/share/antidote/antidote.zsh
antidote load

# Initialize Starship Prompt
eval "$(starship init zsh)"

# Initialize Atuin (History) && fzf (Fuzzy Search)
eval "$(atuin init zsh)"
source <(fzf --zsh)

# User configuration

PATH="$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"

### Add Homebrew to path
eval "$(/opt/homebrew/bin/brew shellenv)"
# Homebrew autocompletion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Aliases
alias md5sum="md5"
alias vim="nvim"

#BASE16_SHELL=/Users/iref/.config/base16-shell
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$("$BASE16_SHELL/profile_helper.sh")"

. $HOME/.asdf/asdf.sh

# Set via zsh-plugin
#. $HOME/.asdf/completions/asdf.bash

GPG_TTY=$(tty)
export GPG_TTY
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/iref/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

## Flutter
export FLUTTER_ROOT="$(asdf where flutter)"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH=/Users/iref/.opencode/bin:$PATH
export OPENROUTER_API_KEY="<your-openrouter-api-key>"
