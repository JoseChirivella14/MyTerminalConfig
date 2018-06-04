#!/bin/zsh

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export PATH="$HOME/.rbenv/bin:$PATH"
# export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
# export MANPATH="/usr/local/man:$MANPATH"
# export JAVA_HOME="`/usr/libexec/java_home -v 10`"

# Virtual Environment
export PROJECT_HOME=$HOME/MyTerminalConfig/Projects

# Editor
export EDITOR='vim'

# Owner
export USER_NAME="jchirive"

# Ruby
# eval "$(rbenv init -)"

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias gpsu='git push --set-upstream origin'
alias gc='git checkout'
alias zshconfig="vim ~/.zshrc"
alias reloadzsh="source ~/.zshrc"
alias envconfig="vim ~/MyTerminalConfig/Projects/config/env.sh"
alias dm="docker-machine"
alias copypublicssh="pbcopy < ~/.ssh/id_rsa.pub"
alias ic="ionic cordova"

# Cisco
source $HOME/MyTerminalConfig/Projects/config/cisco.sh

