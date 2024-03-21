call plug#begin()

" Plugins
Plug 'vim-scripts/c.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'prisma/vim-prisma'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mechatroner/rainbow_csv'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

call plug#end()

set nocompatible

" Turn syntax highlighting on
syntax on

set number

" Use spaces for indentation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

let g:doge_doxygen_settings = { 'char': '@' }
