set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'NLKNguyen/papercolor-theme'

call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start

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

set exrc
set secure

set laststatus=2
set showmode

set autoread

runtime macros/matchit.vim

syntax on
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2

let mapleader = "\<Space>"

" NerdTree
nmap <silent> <leader>n :NERDTreeFind<CR>
nmap <silent> <leader>p :NERDTreeToggle<CR>

let g:NERDTreeWinSize=50

" NerdCommenter
let g:NERDCompactSexyComs = 1

nmap <silent> <Space> :silent noh<Bar>echo<CR>

set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar

" Show filename
set ruler

" Navigate through buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

" Navigate through windows
map <Tab> <C-W>w
map <C-t> <C-W>T
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Splitting should be more natural...
set splitbelow
set splitright

" Highlight search
set hlsearch

" Move window to tab
nnoremap <C-t> <C-w>T

" Remove whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWritePre * :%s/\s\+$//e

" Stop highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Exit to normal mode quickly
:inoremap kj <ESC>

" Map semicolon to colon
:noremap ; :

" open current window into tab, mantain current split structure
nmap <leader>to :tabedit %<CR>
nmap <leader>tc :tabclose<CR>

" Copies current file path to the clipboard
nmap <silent> <leader>cp :let @+ = expand("%")<CR>
set clipboard=unnamed

" Save file
nnoremap <Leader>w :w<CR>

" wrap/unwrap arguments
nnoremap <silent> <leader>a :ArgWrap<CR>
let g:argwrap_tail_comma = 1

" color scheme config
set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor
