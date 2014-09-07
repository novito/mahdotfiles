set nocompatible
set backspace=indent,eol,start

call pathogen#helptags()
call pathogen#incubate()

set encoding=utf-8
set termencoding=utf-8

set nobackup
set nowritebackup
set noswapfile
set autowriteall
set noshowmode

set autoindent
set smarttab
set expandtab
set number

set ignorecase
set smartcase

runtime macros/matchit.vim 

syntax on             
filetype plugin indent on
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=4 sts=4 sw=4
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype liquid setlocal ts=2 sts=2 sw=2

"if has('gui_running')
  "set background=light
"else
  "set background=dark
"end

"let g:solarized_termtrans = 1
colorscheme desert

" NerdTree
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
let g:NERDTreeWinPos = "right" " Make nerdtree open on right

" MVIM
if has('gui_macvim')
  set lines=999 columns=9999
endif

" Fontsize & style
set gfn=Monaco:h12

noremap <silent> <Space> :silent noh<Bar>echo<CR>
