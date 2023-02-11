#   history.zsh
#   History configuration for ZSH.

if [[ -z "$HISTFILE" ]]; then
  HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history"
fi

HISTSIZE=10000
SAVEHIST=10000

alias history='fc -fl 1'

setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# vim: ft=zsh ts=2 sw=2 sts=2 et fenc=utf-8
