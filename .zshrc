# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mortalscumbag"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    bower bundler command-not-found composer docker docker-compose gem git git-flow github golang gulp history-substring-search
    kubectl #minikube
    npm pip sudo vagrant
)

unsetopt NOMATCH
unsetopt AUTO_CD

source $ZSH/oh-my-zsh.sh
source .aliases.zsh

# phpenv 
#export PATH="/home/etienne/.phpenv/bin:$PATH"
#eval "$(phpenv init -)"

bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward
bindkey -r "\e\e" 
bindkey "\es" sudo-command-line 

[ -f '/etc/zsh_command_not_found' ] && source /etc/zsh_command_not_found

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# ignore uninteresting user accounts
zstyle ':completion:*:*:*:users' ignored-patterns kernoops

# aws cli autocompletion
[ -f /usr/bin/aws_zsh_completer.sh ] && source /usr/bin/aws_zsh_completer.sh

# doctl autocompletion
[ -f /usr/bin/doctl ] && source <(doctl completion zsh)

# BEGIN SNIPPET: Platform.sh CLI configuration
if [ -f 'i~/.platformsh/shell-config.rc' ]; then 
    export PATH=$PATH:~/.platformsh/bin
    . '~/.platformsh/shell-config.rc'
fi
# END SNIPPET

if [ -f ~/apps/kube-ps1/kube-ps1.sh ]; then
    source ~/apps/kube-ps1/kube-ps1.sh
    export PROMPT='$(kube_ps1)'$PROMPT
fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# rbenv
eval "$(rbenv init -)"
