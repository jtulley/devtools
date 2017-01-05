sudo apt-get install -y vim-gtk
sudo apt-get install -y screen
sudo apt-get install -y openssh-server

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export PATH=/usr/local/bin:$PATH
brew update
brew install vim --with-lua && brew install macvim --with-lua
brew link macvim
brew linkapps macvim

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

cp .vimrc ~/

vim -c "GoInstallBinaries"

mkdir -p ~/.config/git
cp ignore ~/.config/git
