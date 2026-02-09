# Toggle between 'modern' and 'legacy' terminal settings
MODERN_MODE=true

if [ "$MODERN_MODE" = true ]; then
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
else
    # Path to your oh-my-zsh installation
    export ZSH=$HOME/.oh-my-zsh

    # Set name of the theme to load.
    # Look in ~/.oh-my-zsh/themes/
    # Optionally, if you set this to "random", it'll load a random theme each
    # time that oh-my-zsh is loaded.
    ZSH_THEME="robbyrussell"
    # Uncomment the following line to use case-sensitive completion.
    # CASE_SENSITIVE="true"

    # Uncomment the following line to disable bi-weekly auto-update checks.
    # DISABLE_AUTO_UPDATE="true"

    # Uncomment the following line to change how often to auto-update (in days).
    # export UPDATE_ZSH_DAYS=13

    # Uncomment the following line to disable colors in ls.
    # DISABLE_LS_COLORS="true"

    # Uncomment the following line to disable auto-setting terminal title.
    # DISABLE_AUTO_TITLE="true"

    # Uncomment the following line to enable command auto-correction.
    # ENABLE_CORRECTION="true"

    # Uncomment the following line to display red dots whilst waiting for completion.
    # COMPLETION_WAITING_DOTS="true"

    # Uncomment the following line if you want to disable marking untracked files
    # under VCS as dirty. This makes repository status check for large repositories
    # much, much faster.
    # DISABLE_UNTRACKED_FILES_DIRTY="true"

    # Uncomment the following line if you want to change the command execution time
    # stamp shown in the history command output.
    # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
    # HIST_STAMPS="mm/dd/yyyy"

    # Would you like to use another custom folder than $ZSH/custom?
    # ZSH_CUSTOM=/path/to/new-custom-folder

    # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
    # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
    # Example format: plugins=(rails git textmate ruby lighthouse)
    # Add wisely, as too many plugins slow down shell startup.
    plugins=(git python mvn pip zsh-syntax-highlighting)

    source $ZSH/oh-my-zsh.sh
fi

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
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
