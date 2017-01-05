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

let g:neocomplete#enable_at_startup = 1

let mapleader = ","

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

set autowrite

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>i <Plug>(go-imports)
autocmd FileType go nmap <Leader>s <Plug>(go-info)

let g:go_auto_sameids = 1


