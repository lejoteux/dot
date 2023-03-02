#   directories.zsh
#   Configuration related to directories and directory navigation.

# -- OPTIONS -----------------------------------------------------------
# ----------------------------------------------------------------------

# Check manpage for documentation: zshoptions(1)
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS
setopt PUSHD_SILENT

# -- ALIASES -----------------------------------------------------------
# ----------------------------------------------------------------------

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

if [[ $commands[lsd] ]]; then
  alias -g ls='lsd --color=auto --group-dirs=first'
fi

alias ll='ls -lh'
alias la='ls -lAh'
alias lsa='ls -lah'

# -- COMPLETION --------------------------------------------------------
# ----------------------------------------------------------------------

function d() {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
compdef _dirs d

# vim: ft=zsh ts=2 sw=2 sts=2 et fenc=utf-8
