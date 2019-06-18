clear
export EDITOR=/usr/bin/vim
export PATH=$PATH:~/scripts

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[$(tput bold)\]\u \[$(tput sgr0)\]\w \[$(tput setaf 2)\]\$(parse_git_branch)\[$(tput setaf 7)\] $ "


export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/striesenberg/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh






export CLICOLOR=1
export LSCOLORS=exhxhxhxhxhxhxhxhxhxhx

[ -s "/Users/striesenberg/.scm_breeze/scm_breeze.sh" ] && source "/Users/striesenberg/.scm_breeze/scm_breeze.sh"


screensaver_source=$HOME/Documents/terminal-screensaver/terminal-screensaver-include.sh
[[ -s "$screensaver_source" ]] && source "$screensaver_source"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

