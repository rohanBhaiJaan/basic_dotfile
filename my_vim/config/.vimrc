if has("syntax")
    syntax on
endif

packloadall

set path+=**
set nocompatible
set number relativenumber
set shiftwidth=4 expandtab
set noswapfile
set incsearch
set nowrap

filetype on
filetype plugin on
filetype indent on

colorscheme my_colors

let g:base_folder = $HOME . '/my_vim'
let &runtimepath = &runtimepath . ',' . g:base_folder . "/pack/bvim/start/vim_practice.vim/"
