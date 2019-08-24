# Path to your oh-my-zsh installation.
export ZSH="/home/mckim/.oh-my-zsh"

ZSH_THEME="robbyrussell"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

# ZSH_CUSTOM=/path/to/new-custom-folder

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  zsh-syntax-highlighting 
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

set -o ignoreeof # prevent control d from exiting.

export LANGUAGE=en_IN:en
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

source $HOME/.bash_aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


