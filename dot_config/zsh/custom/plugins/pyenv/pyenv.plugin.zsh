#   pyenv.plugin.zsh
#   pyenv - python version manager integration.

export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export PYENV_SHELL="zsh"

path=( "$PYENV_ROOT/bin" "$PYENV_ROOT/shims" "$path[@]" )
command pyenv rehash 2>/dev/null

pyenv() {
  [[ -z "${commands[pyenv]}" ]] && return 1
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")"
    ;;
  *)
    command pyenv "$command" "$@"
    ;;
  esac
}
