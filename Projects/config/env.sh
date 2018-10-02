#!/bin/zsh

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Node
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# Java
install_java()
{
  if [ command java &> /dev/null ]; then
    export JAVA_HOME="`/usr/libexec/java_home -v 10`"
  fi
}

# Virtual Environment
export PROJECT_HOME=$HOME/MyTerminalConfig/Projects

# Editor
export EDITOR='vim'

# Owner
export USER_NAME=$USER

# Ruby
rbenv()
{
  if [ command rbenv &> /dev/null ]; then
    eval "$(rbenv init -)"
    export PATH="$HOME/.rbenv/bin:$PATH"
    export PATH="$HOME/.rbenv/shims:$PATH"
    export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
  fi
}

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Google Cloud SDK
if [ -f '/Users/jchirivella/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jchirivella/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/jchirivella/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jchirivella/google-cloud-sdk/completion.zsh.inc'; fi
alias changegcloud="gcloud config configurations activate"

# Aliases
alias gpsu='git push --set-upstream origin'
alias gc='git checkout'
alias zshconfig="vim ~/.zshrc"
alias reloadzsh="source ~/.zshrc"
alias envconfig="vim ~/MyTerminalConfig/Projects/config/env.sh"
alias dm="docker-machine"
alias dc="docker-compose"
alias d="docker"
alias copypublicssh="pbcopy < ~/.ssh/id_rsa.pub"

rbenv
install_java
