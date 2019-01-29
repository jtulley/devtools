let g:isLinux = system('uname') == "Linux\n"
let g:isMac = !g:isLinux

let mapleader = "\<Space>"

"plugins {{{1
   "setup Vundle {{{2
      "install setup {{{3
         let vundleDir = expand('~/.vim/bundle/')
         let vundleDoInstall = 0
         if !isdirectory(vundleDir)
            let gitUrl = "https://github.com/gmarik/vundle.git"
            call mkdir(vundleDir)
            exec "!git clone ".gitUrl." ".vundleDir."vundle"
            let vundleDoInstall = 1
         endif
      "normal setup {{{3
         filetype off
         set runtimepath=$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/bundle/vundle
         call vundle#begin()
         Plugin 'gmarik/vundle'
      "}}}
   "}}}

    Plugin 'leafgarland/typescript-vim'
    Plugin 'ervandew/supertab'
    Plugin 'JulesWang/css.vim'
    Plugin 'ekalinin/Dockerfile.vim'
    Plugin 'c0r73x/vimdir.vim'
    Plugin 'xolox/vim-misc'
    Plugin 'xolox/vim-colorscheme-switcher'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'christoomey/vim-tmux-navigator'
    Plugin 'Wolfy87/vim-enmasse'
    Plugin 'rking/ag.vim'
    Plugin 'junegunn/fzf'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'
    Plugin 'sbdchd/neoformat'
    Plugin 'udalov/kotlin-vim'
    Plugin 'freitass/todo.txt-vim'

    " Plugin 'sbdchd/neoformat' {{{2
    let g:neoformat_try_formatprg = 0
    let g:neoformat_enabled_javascript = ['prettier']
    "}}}

    " Plugin 'mxw/vim-jsx' {{{2
    let g:jsx_ext_required=0
    "}}}

    nnoremap <leader>o :FZF --inline-info<cr>


   "Plugin 'majutsushi/tagbar' {{{2
      Plugin 'majutsushi/tagbar'
      let g:tagbar_left = 1
      "let g:tagbar_vertical = 30

     " Plugin 'fatih/vim-go' {{{2
     Plugin 'fatih/vim-go'

     let g:go_fmt_command = "goimports"
     "let g:go_fmt_command = "gofmt"
     let g:go_fmt_fail_silently = 1
     let g:go_def_mapping_enabled = 0

     "don't do whitespace errors, go fmt will eliminate them
     let g:go_highlight_trailing_whitespace_error = 0
     let g:go_highlight_array_whitespace_error = 0
     let g:go_highlight_chan_whitespace_error = 0
     let g:go_highlight_space_tab_error = 0

     "highlight a bunch of stuff
     let g:go_highlight_operators = 1
     let g:go_highlight_functions = 1
     let g:go_highlight_methods = 1
     let g:go_highlight_structs = 1
     let g:go_highlight_interfaces = 1
     let g:go_highlight_build_constraints = 1
     let g:go_auto_type_info = 0

     "I like my own K key, thanks
     let g:go_doc_keywordprg_enabled = 0

     "I only want my own snippets
     let g:go_snippet_engine = ""

     "I don't want the templates
     let g:go_template_autocreate = 0

     "}}}


      "Plugin 'Valloric/YouCompleteMe' {{{2
      "
      command! YouCompleteMeInstall :!cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.py --gocode-completer
      "Plugin 'Valloric/YouCompleteMe'
      let g:ycm_min_num_identifier_candidate_chars = 99 "only complete on '.' or '->'
      let g:ycm_min_num_identifier_candidate_chars = 2
      "let g:ycm_filetype_whitelist = { 'cpp': 1, 'hpp': 1 }
      "let g:ycm_global_ycm_extra_conf = '~/config/vim/.ycm_extra_conf.py'
      let g:ycm_show_diagnostics_ui = 0
      "let g:ycm_autoclose_preview_window_after_completion = 1
      let g:ycm_autoclose_preview_window_after_insertion = 1
      let g:ycm_use_ultisnips_completer = 0
      let g:ycm_key_list_select_completion = ['<C-N>']
      let g:ycm_key_list_previous_completion = ['<C-P>']

      let g:ycm_add_preview_to_completeopt = 0
      let g:ycm_min_num_of_chars_for_completion = 1
      let g:ycm_auto_trigger = 1
     "}}}

     "Plugin 'jeetsukumaran/vim-buffersaurus' {{{2
       Plugin 'jeetsukumaran/vim-buffersaurus'
     "}}}

      Plugin 'tpope/vim-vinegar'

     "Plugin 'tpope/vim-fugitive' {{{2
      Plugin 'tpope/vim-fugitive'
      Plugin 'idanarye/vim-merginal'
      augroup Fugitive
         autocmd!
         autocmd BufReadPost fugitive://* set bufhidden=delete
      augroup END

     "Plugin 'scrooloose/syntastic' {{{2
     Plugin 'scrooloose/syntastic'
     let g:syntastic_error_symbol='✗'
     let g:syntastic_style_error_symbol='✗'
     let g:syntastic_warning_symbol='⚠'
     let g:syntastic_style_warning_symbol='⚠'
     let g:syntastic_mode_map = {
        \ "mode": "passive",
        \ "active_filetypes": [],
        \ "passive_filetypes": [] }
     "}}}

   "Plugin 'vim-scripts/UltiSnips' {{{2
   if !has("nvim")
     Plugin 'vim-scripts/UltiSnips'
   end
      let g:UltiSnipsExpandTrigger="<tab>"
      let g:UltiSnipsJumpForwardTrigger="<tab>"
      let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

      let g:UltiSnipsEditSplit = 'vertical'
      let g:UltiSnipsSnippetsDir = '~/config/vim/my_snippets'

      let g:UltiSnipsSnippetDirectories=["my_snippets"]

      map <leader>s :UltiSnipsEdit<CR>


         "Plugin 'godlygeek/tabular' {{{2
   Plugin 'godlygeek/tabular'
      "todo: find a new mapping for this shiz
      "nnoremap <leader>= :Tabular /=/<CR>:echo<CR>

         "Plugin 'airblade/vim-gitgutter' {{{2
   let g:gitgutter_sign_added = '+'
   let g:gitgutter_sign_modified = '~'
   let g:gitgutter_sign_removed = 'x'
   let g:gitgutter_sign_modified_removed = '%'
   let g:gitgutter_diff_args = '-w'

   if !exists('g:gitgutter_enabled')
     let g:gitgutter_enabled = 1
     let g:MarkingToolsState = ''
   endif
   let g:gitgutter_map_keys = 0
   highlight clear SignColumn
   Plugin 'airblade/vim-gitgutter'
      nnoremap <leader>gu :GitGutterToggle<cr>
      "nnoremap <leader>gg :call MarkingToolsToggle()<cr><cr>
      func! MarkingToolsToggle()
         if g:MarkingToolsState == 'syntastic'
           SyntasticToggleMode
           GitGutterEnable
           let g:MarkingToolsState = 'gitgutter'
         elseif g:MarkingToolsState == 'gitgutter'
           GitGutterDisable
           SyntasticToggleMode
           SyntasticCheck
           let g:MarkingToolsState = ''
         else
           SyntasticT
           let g:MarkingToolsState = 'syntastic'
         endif
         echo g:MarkingToolsState
      endfunc
      func! GitAdjacentChange(next)
        if &diff
          if a:next
            normal ]c
            normal zz
          else
            normal [c
            normal zz
          endif
        else
          if a:next
            GitGutterNextHunk
            normal zz
          else
            GitGutterPrevHunk
            normal zz
          endif
        endif
      endfunc
      nnoremap gn :call GitAdjacentChange(1)<cr>
      nnoremap gp :call GitAdjacentChange(0)<cr>
      nnoremap gr :GitGutterRevertHunk<CR>
      nnoremap gs :GitGutterStageHunk<CR>
   "}}}

  "Run the setup! {{{2
    call vundle#end()
    "my shiz should override EVERYTHING
    set runtimepath-=~/.vim "remove first so that the add occurs at the end
    set runtimepath+=~/.vim
    filetype plugin indent on
    if vundleDoInstall
        BundleInstall!
    endif
  "}}}

autocmd FileType go setlocal shiftwidth=3 tabstop=3 noet

"colorschemes {{{1
  set termguicolors
  set t_ut= "fix the weird background erasing crap
  set ttyfast
  if g:isMac
    if has("gui-running")
        colorscheme default
    else
        colorscheme darcula
    endif
  elseif g:isLinux
    colorscheme tcsoft
  endif

nnoremap <f3> :NextColorScheme<cr>
nnoremap <f2> :PrevColorScheme<cr>
"nnoremap <f1> :RandomColorScheme<cr>
highlight Comment cterm=italic


"let g:neocomplete#enable_at_startup = 1

"prototype settings {{{1
  nnoremap <leader>, :TagbarOpenAutoClose<cr>
  nnoremap <leader>y [sciw<esc>:echo @"<cr>a


"settings {{{1

    set nocompatible

    filetype plugin indent on
    syntax on
    syntax enable

    set nobk
    set shiftwidth=4
    set tabstop=4
    set et
    set guifont=Hack\ 12
    " set guifont=Amnesia\ Sans\ Mono\ 11

    "formatting {{{2
        set formatoptions+=j "fix up comments when they are joined
    "}}}

    "indentation {{{2
        set nocindent nosmartindent autoindent
        set nolist
        set listchars=tab:\|\ ,
    "}}}

    "Timeout stuff (keep vim snappy) {{{2
        set notimeout
        set ttimeout
        set ttimeoutlen=0
    "}}}

    "search {{{2
        set wildmode=full
        set gdefault "always use the g flag in %s///g
        set ignorecase smartcase incsearch hlsearch wrapscan
    "}}}


  "folds {{{2
    "blow away the wonky dashes in the folds {{{3
    "set fillchars="fold: "
    "close a fold by moving left into the number column {{{3
        "nnoremap <expr> h MoveLeft()
        "func! MoveLeft()
          "if getpos('.')[2] == 1
              "return "zc"
          "else
              "return "h"
          "endif
        "endfunc
    "set the fold text {{{3
        "set foldtext=MyFoldText()
        "function! MyFoldText()
          "let sub = substitute(foldtext(), '+-*\s*\d*\s*lines:\s*', '', 'g')
          "return repeat(' ', &sw * (v:foldlevel - 1)) . sub
        "endfunction
    "}}}
    "
  "spell check {{{2
    nnoremap <silent> <F4> :set spell!<cr>:set spell?<cr>
    set spelllang=en_us nospell

      "difftool {{{2
    set diffopt=
    set diffopt+=filler "show filler lines to keep everything in sync
    set diffopt+=iwhite "ignore whitespace
  "whitespace {{{2
    "tab characters {{{3
        set tabstop=2 shiftwidth=2 expandtab smarttab shiftround
    ""highlight trailing whitespace {{{3
        highlight TrailingWhitespace cterm=underline
        "match TrailingWhitespace /\s\+\%#\@<!$/
        "match TrailingWhitespace /\s\+$/
    ""blow away trailing whitespace {{{3
      autocmd BufWritePre * :call RemoveTrailingWhitespace()
      command! Fws :call RemoveTrailingWhitespace()
      func! RemoveTrailingWhitespace()
        let save_cursor = getpos(".")
        %s/\s\+$//e
        call setpos('.', save_cursor)
        nohlsearch
      endfunc
    "}}}

    ""other {{{2
    if has("mouse_sgr")
      set ttymouse=sgr
    endif
   if g:isLinux
      set clipboard=unnamedplus
    else
      set clipboard=unnamed
    endif
    "}}}

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
nnoremap <leader><Space> :w<CR>

nnoremap <Leader>h  :set splitright&<CR> :vsp<CR> :exec ":e ".expand("%:h")<CR>
nnoremap <Leader>j  :set splitbelow<CR> :sp<CR> :exec ":e ".expand("%:h")<CR>
nnoremap <Leader>k  :set splitbelow &<CR> :sp<CR> :exec ":e ".expand("%:h")<CR>
nnoremap <Leader>l  :set splitright<CR> :vsp<CR> :exec ":e ".expand("%:h")<CR>
nnoremap <Leader>q  :q<CR>

nnoremap <Leader>= <C-w>= "Resize all windows

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

autocmd filetype crontab setlocal nobackup nowritebackup

set nobackup nowritebackup

let g:go_auto_sameids = 1

"colorscheme tweaks {{{2
    if g:colors_name == 'darcula' "{{{3
      " this scheme, my default for a while, had a status line with the background
      " which was the same as the window background
      hi StatusLine ctermfg=67 ctermbg=236 cterm=bold guifg=#a9b7c6 guibg=#424242 gui=bold
      hi StatusLineNC ctermfg=188 ctermbg=236 cterm=NONE guifg=#a9b7c6 guibg=#423243 gui=NONE
    endif

set directory=~/.vimswap//
