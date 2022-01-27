#sudo apt-get install -y vim-gtk
#sudo apt-get install -y screen
#sudo apt-get install -y openssh-server

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export PATH=/usr/local/bin:$PATH
brew update
brew install vim --with-lua && brew install macvim --with-lua
brew link macvim
brew unlink vim
brew install tmux
brew install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
brew install reattach-to-user-namespace --wrap-pbcopy-pbpaste && brew link reattach-to-user-namespace

mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .vimrc ~/

vim -c "GoInstallBinaries"

mkdir -p ~/.config/git
cp ignore ~/.config/git

cp .zshrc ~/
touch ~/.zshrc_work

brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
echo Remember to put work-specific zsh functions in ~/.zshrc_work
git config --global --edit
