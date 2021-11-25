# First of all - update
sudo apt-get -y update

# Basic Tools
sudo apt-get install -y git
sudo apt-get install -y hub

sudo apt-get install -y bat
sudo apt-get install -y tldr
sudo apt-get install -y curl
sudo apt-get install -y silversearcher-ag
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


# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Postgres
sudo apt install -y postgresql postgresql-contrib

# Clean ubused modules
sudo apt autoremove
