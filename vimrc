set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'kchmck/vim-coffee-script'
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-surround'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'
Plugin 'rking/ag.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jgdavey/tslime.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-dispatch'

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

" Powerline
set guifont=Source\ Code\ Pro\ for\ Powerline:h15

runtime macros/matchit.vim

syntax on
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
autocmd Filetype cucumber setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2

"colorscheme railscasts
"set background=dark
set background=dark
colorscheme base16-railscasts

highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

" NerdTree
let mapleader = ","
nmap <silent> <leader>n :NERDTree<cr>
nmap <silent> <leader>p :NERDTreeToggle<CR>

let g:NERDTreeWinSize=50

nmap <silent> <Space> :silent noh<Bar>echo<CR>

" Run rspec from vim
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
"let g:rspec_runner = 'os_x_iterm'
"let g:rspec_command = 'call Send_to_Tmux("zeus rspec {spec}\n")'
let g:rspec_command = "Dispatch zeus rspec {spec}"

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Do not open file in buffer after finding with Ag
cabbrev Ag Ag!

" Find stuff just pressing \
nnoremap \ :Ag<SPACE>

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
:nmap ; :

" Toogle nerdtree
nnoremap <C-e> :NERDTreeToggle<CR>

" open current window into tab, mantain current split structure
nmap <leader>to :tabedit %<CR>
nmap <leader>tc :tabclose<CR>

" Copies current file path to the clipboard
nmap <silent> <leader>cp :let @+ = expand("%")<CR>

" Allow jsx highlight in js files
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['jsxhint']
