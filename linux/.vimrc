set nobk
set shiftwidth=4
set tabstop=4
set et
set guifont=Amnesia\ Sans\ Mono\ 11
set smartindent

autocmd FileType go setlocal shiftwidth=3 tabstop=3 noet

execute pathogen#infect()
syntax on
filetype plugin indent on

