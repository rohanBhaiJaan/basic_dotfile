if has("syntax")
    syntax on
endif

let g:base_folder = $HOME . '/my_vim'

let &runtimepath = g:base_folder . ',' . &runtimepath
let &runtimepath = &runtimepath . ',' . g:base_folder . '/after'

set path+=**
set nocompatible
set number relativenumber
set shiftwidth=4 expandtab
set nowrap

colorscheme my_colors
