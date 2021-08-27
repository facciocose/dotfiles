### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

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
zstyle ':completion:*' completer _complete _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'l:|=* r:|=*'

# VCS
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() { vcs_info }
zstyle ':vcs_info:git*' formats " %b"

# Prompt
setopt prompt_subst
PROMPT="%1~ %# "
RPROMPT='${vcs_info_msg_0_}'

# Aliases
alias ls="ls --color=auto"
alias l="ls"
alias ll="ls -l"
alias la="ls -la"
alias yay="cpulimit -l 50 yay"

alias gst="git status"

# asdf
. $HOME/.asdf/asdf.sh

# Poetry
export PATH="$HOME/.poetry/bin:$PATH"

# Local bin
export PATH=$HOME/.local/bin:$PATH

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
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    alias open=xdg-open
  ;;
esac

