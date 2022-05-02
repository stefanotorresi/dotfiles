export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"
export GOPATH="/home/etienne/work/go/system"
export GOROOT="$(go env GOROOT)"
export GO111MODULE=on
export npm_config_prefix=~/.node_modules

# goenv
export GOENV_ROOT="$HOME/.local/opt/goenv"
export GOENV_GOPATH_PREFIX="$HOME/work/go"
export PATH="$GOENV_ROOT/bin:$PATH"
if [ -x "$(command -v goenv)" ]; then
    eval "$(goenv init -)"
fi

# elixir
export ERL_AFLAGS="-kernel shell_history enabled"

export PATH="$PATH:$HOME/.gem/ruby/3.0.0/bin:$HOME/.node_modules/bin:$HOME/.config/composer/bin:$GOROOT/bin:$GOPATH/bin:$HOME/.cargo/bin"
