sudo apt-get install -y vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Main configuration
cp ../vim-configuration/vimrc ~/.vimrc

# Setup color scheme
mkdir -p ~/.vim/colors
cp ../vim-configuration/gruvbox.vim ~/.vim/colors

# Setup pathogen
mkdir -p ~/.vim/autoload
touch ~/.vim/autoload/pathogen.vim
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim
