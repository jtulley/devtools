sudo apt-get install -y vim-gtk
sudo apt-get install -y screen
sudo apt-get install -y openssh-server

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
cp .vimrc ~/
vim -c "GoInstallBinaries"

mkdir -p ~/.config/git
cp ignore ~/.config/git
