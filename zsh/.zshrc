# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# Begin/End
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'


# Aliases
alias ls="ls --color=auto"
alias l="ls"
alias ll="ls -l"
alias la="ls -la"
alias yay="cpulimit -l 50 yay"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# OS specific settings
case "$OSTYPE" in
  darwin*)
    export PATH=/usr/local/sbin:$PATH
    export ANDROID_HOME=$HOME/Library/Android/sdk
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/platform-tools
  ;;
  linux*)
    export ANDROID_HOME=$HOME/.android
    export PATH=$HOME/.local/bin:$PATH
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    export TERMINAL="alacritty"
    alias ssh='TERM=xterm-256color ssh'
    alias open=xdg-open
  ;;
esac
