export PATH=$HOME/.local/bin:$PATH

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

# Aliases
alias l="ls"
alias ll="ls -l"
alias la="ls -la"

# OS specific settings
case "$OSTYPE" in
  darwin*)
  ;;
  linux*)
    export TERMINAL="alacritty"
    alias ssh='TERM=xterm-256color ssh'
  ;;
esac
