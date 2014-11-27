filetype off
call pathogen#runtime_append_all_bundles()
syntax on
filetype plugin on
filetype indent on
filetype plugin indent on
set nocompatible
set smartindent
set ignorecase
set hidden 
set nu
let mapleader =","
set history=1000
set wildmenu
set smartcase
set title
set incsearch
set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
colorscheme colorer
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set backupdir=~/.vim/vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set viminfo+=!
