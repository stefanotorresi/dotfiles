export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"
export GO111MODULE=on
export ERL_AFLAGS="-kernel shell_history enabled"
export npm_config_prefix=".node_modules"
export GOPATH="$HOME/.go"
export GOBIN="$GOPATH/bin"

# go bin is put as last here so that we can bootstrap asdf with system go
export PATH="$PATH:$GOBIN"

if [ -x "$(command -v asdf)" ]; then
  # this will update go env vars with the asdf version
  source ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh
  export PATH="$GOBIN:$PATH"
fi

export PATH="$HOME/$npm_config_prefix/bin:$PATH"

# this is meant to have precedence overy everything
export PATH="$HOME/.local/bin:$PATH"
