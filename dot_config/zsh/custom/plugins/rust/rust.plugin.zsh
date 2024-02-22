#   rust.plugin.zsh
#   rust development environment integration.

export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

path=( "$CARGO_HOME/bin" "$path[@]" )

# vim: ft=zsh ts=2 sw=2 sts=2 et fenc=utf-8

