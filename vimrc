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
set relativenumber
set number

set ignorecase
set smartcase

set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

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

colorscheme desert

" NerdTree
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
let g:NERDTreeWinPos = "right" " Make nerdtree open on right
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" MVIM
if has('gui_macvim')
  set lines=999 columns=9999
endif

" Fontsize & style
set gfn=Monaco:h12

noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Run rspec from vim
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm"

" Maximize/Minimize windows
nnoremap <F9> :tabedit %<CR>
nnoremap <F10> :tabclose<CR>
