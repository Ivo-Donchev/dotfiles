export ZSH="/home/ivo/.oh-my-zsh"

ZSH_THEME="amuse"

autoload bashcompinit
bashcompinit

plugins=(
  git,
  command-not-found
)

source $ZSH/oh-my-zsh.sh


## Hub related
alias g="hub"

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
