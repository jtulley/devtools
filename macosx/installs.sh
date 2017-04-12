sudo apt-get install -y vim-gtk
sudo apt-get install -y screen
sudo apt-get install -y openssh-server

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export PATH=/usr/local/bin:$PATH
brew update
brew install vim --with-lua && brew install macvim --with-lua
brew link macvim
brew linkapps macvim
brew install tmux
brew install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
brew install reattach-to-user-namespace --wrap-pbcopy-pbpaste && brew link reattach-to-user-namespace

mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cp .vimrc ~/

vim -c "GoInstallBinaries"

mkdir -p ~/.config/git
cp ignore ~/.config/git
