# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Begin/End
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# Aliases
alias l="ls"
alias ll="ls -l"
alias la="ls -la"

# OS specific settings
case "$OSTYPE" in
  darwin*)
    export PATH=/usr/local/sbin:$PATH
    
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    # [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    export ANDROID_HOME=$HOME/Library/Android/sdk
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/platform-tools
  ;;
  linux*)
    export PATH=$HOME/.local/bin:$PATH
    export TERMINAL="alacritty"
    alias ssh='TERM=xterm-256color ssh'
  ;;
esac
