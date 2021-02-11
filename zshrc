export ZSH="/home/ivo/.oh-my-zsh"

# ZSH_THEME="amuse"
# ZSH_THEME="pure"
ZSH_THEME="spaceship"

autoload bashcompinit
bashcompinit

plugins=(
  fzf
)

source ~/.oh-my-zsh/plugins/git/git.plugin.zsh
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
alias gprsdiff='/home/ivo/Code/dotfiles/scripts/prs_diff.sh'

## Yarn related
alias yas='yarn start'
alias yat='yarn test'

## Python related
alias py="python3"
#
# Pyenv related
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

## Django related
alias pmr='python manage.py runserver'
alias pmt='python manage.py test'
alias pmm='python manage.py migrate'
alias pmmm='python manage.py makemigrations'
alias pms='python manage.py shell'
alias pmsp='python manage.py shell_plus'
alias killpmr='pkill -f "manage.py runserver"'

## Hack related
alias goto-colab='source ~/Code/virtual-environments/colab/bin/activate && cd ~/Code/colab/tc-colab/'
alias goto-colab-fe='cd ~/Code/colab-frontend/'

alias goto-playground='pyenv activate playground && cd ~/Code/playground'

alias ferntech-be='pyenv activate ferntech-3.7.9 && cd ~/Code/ferntech/if_portal_django_2'
alias ferntech-fe='cd ~/Code/ferntech/if_portal_angular'
alias ferntech-infrastructure='cd ~/Code/ferntech/infrastructure_as_code'
alias ferntech-controllers='cd ~/Code/ferntech/if_controller_2 && source ~/Code/virtual-environments/ferntech-controllers/bin/activate'
alias ferntech-if-server='cd ~/Code/ferntech/if_server && source ~/Code/virtual-environments/if-server/bin/activate'
alias ferntech-metafiles='cd ~/Code/ferntech/metafiles'
alias ferntech-logic-loops-sandbox='cd ~/Code/ferntech/logicloop_sandbox_server && source ~/Code/virtual-environments/ferntech-logic-loops/bin/activate'

alias goto-kallanish='source ~/Code/virtual-environments/kallanish/bin/activate && cd ~/Code/kallanish/kallanish-backend'
alias goto-kallanish-old='source ~/Code/virtual-environments/kallanish/bin/activate && cd ~/Code/kallanish/kallanish-old'
alias goto-kallanish-fe='cd ~/Code/kallanish/kallanish-frontend'

alias goto-centralbalkan='source ~/Code/virtual-environments/centralbalkan/bin/activate && cd /home/ivo/Code/centralbalkan/central_balkan'
alias goto-centralbalkan-fe='cd ~/Code/centralbalkan-frontend'
alias goto-centralbalkan-smart='cd /home/ivo/Code/central-balkan-smart-devices'

alias goto-channels-playground='source ~/Code/virtual-environments/django-channels/bin/activate && cd ~/Code/django-channels-playground/'

alias goto-django-playground='source ~/Code/virtual-environments/django-playground/bin/activate && cd ~/Code/Django-Playground/'

alias hack-course-2019='cd /home/ivo/Code/Programming-101-Python-2019'
alias hack-course-2020='source ~/Code/virtual-environments/python-course-2020/bin/activate && cd ~/Code/Programming-101-Python-2020-Spring'

alias django-meetup='source /home/ivo/Code/virtual-environments/django-meetup-05-2020/bin/activate && cd /home/ivo/Code/django-meetup-05-2020/meetup'

alias django-source='cd /home/ivo/Code/django/django && vi'
alias monitor-python='htop -p $(pgrep python | paste -s -d,)'

alias picticular-be='pyenv activate picticular-3.7.1 && cd /home/ivo/Code/Picticular-backend'

alias hacksoft='cd ~/HackSoft'

alias explorer='nautilus --browser'

# Pyenv settings
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
   eval "$(pyenv init -)"
fi

alias files-count='ls -1 | wc -l'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Theme settings
SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_HG_SHOW="false"
SPACESHIP_HG_BRANCH_SHOW="false"
SPACESHIP_HG_STATUS_SHOW="false"
SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_RUBY_SHOW="false"
SPACESHIP_ELIXIR_SHOW="false"
SPACESHIP_XCODE_SHOW_LOCAL="false"
SPACESHIP_SWIFT_SHOW_LOCAL="false"
SPACESHIP_GOLANG_SHOW="false"
SPACESHIP_PHP_SHOW="false"
SPACESHIP_RUST_SHOW="false"
SPACESHIP_HASKELL_SHOW="false"
SPACESHIP_JULIA_SHOW="false"
SPACESHIP_DOCKER_SHOW="false"
SPACESHIP_AWS_SHOW="false"
SPACESHIP_VENV_SHOW="true"
SPACESHIP_PYENV_SHOW="false"
SPACESHIP_VENV_PREFIX="using "
SPACESHIP_DOTNET_SHOW="false"
SPACESHIP_EMBER_SHOW="false"
SPACESHIP_KUBECONTEXT_SHOW="false"
SPACESHIP_GIT_STATUS_SHOW="false"

export ANDROID_HOME=/opt/android

