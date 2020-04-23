export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

plugins=(git colorize github brew osx ruby rbenv rails git-flow tmux docker docker-compose go golang iterm2 ssh-agent zsh_reload encode64 git npm rsync systemd ufw)
. ~/MyTerminalConfig/env/env.sh
. ~/MyTerminalConfig/env/foodlogiq.sh
. ~/MyTerminalConfig/env/alias.sh
DEFAULT_USER=$USER
neofetch
# Alfred / Todoist Workflow
export NODE_OPTIONS=--experimental-worker
