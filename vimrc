call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" Nice plugins
" easy grep, ctrlp, nerdcommenter, nerdtree, supertab, vdebug, vim-rails,
" Zoomwin


colorscheme desert
" colorscheme proton

set nocompatible              " Use vim defaults
"set ls=2                      " Always show status line
set showcmd                   " Show incomplete commands
set scrolloff=3               " Keep 3 lines when scrolling
set ruler                     " Show the cursor position all the time
set title                     " Show title in console title bar
set hid                       " Change buffer without saving
set showmatch                 " Show matching bracets
set expandtab
 
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=4 sts=4 sw=4
set smartindent               " Smart indent
set autoindent
set nocindent
set wrap
 
set hlsearch                  " Highlight searches
set incsearch                 " Do incremental searching
set ic                        " Case insensitive searching

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set number

let mapleader = ","
nmap <leader>ne :NERDTree<cr>
let g:NERDTreeWinPos = "right" " Make nerdtree open on right

nnoremap <F11> :tab split<CR> " Window splitting <C-w>c to go back

set listchars=tab:»\ ,trail:·

"let g:SuperTabDefaultCompletionType = "<C-X><C-O>" " omni completion using supertab
set completeopt-=preview " don't pop new window when using omni completion

" Avoid carriage return problems
set ffs=unix,dos

" Avoid vdebug to break at index.php
let g:vdebug_options = { 'break_on_open' : 0, 'continuous_mode': 1 }
"
" if !exists("g:vdebug_options")
    " let g:vdebug_options = {}
" endif
" let g:vdebug_options["break_on_open"]=0
