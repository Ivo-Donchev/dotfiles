export ZSH="/home/ivo/.oh-my-zsh"

ZSH_THEME="amuse"

autoload bashcompinit
bashcompinit

plugins=(
  git,
  command-not-found,
  fzf
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Edit command in vim
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

## Hub related
alias g="hub"
alias cleanvim='vi -u ~/.vimrc.sample'

## Git related
alias gm='git commit'
alias gs='git status'
alias ga='git add'
alias gap='git add -p'
alias gup='git pull origin $(git rev-parse --abbrev-ref HEAD)'

## Yarn related
alias yas='yarn start'
alias yat='yarn test'

## Python related
alias py="python3"

## Django related
alias pmr='python manage.py runserver'
alias pmt='python manage.py test'
alias pmm='python manage.py migrate'
alias pmmm='python manage.py makemigrations'
alias pms='python manage.py shell'
alias pmsp='python manage.py shell_plus'
alias killpmr='pkill -f "manage.py runserver"'
