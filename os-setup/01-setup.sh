# First of all - update
sudo apt-get -y update

# Basic Tools
sudo apt-get install -y git
sudo apt-get install -y hub

sudo apt-get install -y bat
sudo apt-get install -y tldr
sudo apt-get install -y curl
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y openvpn
sudo apt install -y xclip

# Zsh and Oh-My_Zsh
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Spaceshipt zshell theme
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 &&
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# Set shell configuration
cp ../zshrc ~/.zshrc
cp ../bashrc ~/.bashrc

# F1 key binding - A place to run all servers and scripts
sudo apt-get install -y guake
# F2 key binding - A place for the editor - vim
sudo apt-get install -y tilda

# AWS
sudo apt-get install -y awscli

# Docker
sudo apt-get install -y \
    ca-certificates \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io


# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Pyenv
sudo apt install -y python3-pip
sudo apt-get install libpq-dev python-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
  libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Postgres
sudo apt install -y postgresql postgresql-contrib

# Clean ubused modules
sudo apt autoremove
