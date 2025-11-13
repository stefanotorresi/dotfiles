export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"
export GO111MODULE=on
export GOPASS_GPG_BINARY="$HOME/.local/bin/gpg"
export ERL_AFLAGS="-kernel shell_history enabled"
export npm_config_prefix=~/.node_modules

# go bin is put as last here so that we can bootstrap asdf with system go
export PATH="$PATH:$HOME/go/bin"

if [ -x "$(command -v asdf)" ]; then
  export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

  # this will set the new $GOBIN
  source ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh
fi

export PATH="\
$HOME/.local/bin:\
$GOBIN:\
$PATH:\
"
