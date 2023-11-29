#   nodenv.plugin.zsh
#   nodenv integration for ZSH.

if [ -n "${commands[nodenv]}" ]; then
  export NODENV_ROOT="$XDG_CONFIG_HOME/nodenv"
  path=( "$NODENV_ROOT/versions/$(cat $NODENV_ROOT/version)/bin" "$path[@]" )
  eval "$(command nodenv init -)"
fi
