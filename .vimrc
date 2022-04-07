call plug#begin()
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set mouse=a
set expandtab
" set statusline+=%F
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set number


let  g:C_UseTool_cmake = 'yes'
let  g:C_UseTool_doxygen = 'yes'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" Plugin 'Valloric/YouCompleteMe' /!\ not functional
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'flazz/vim-colorschemes'
" Plug 'x4m3/vim-epitech'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wadackel/vim-dogrun'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ervandew/supertab'

call plug#end()

colorscheme dracula

" make background transparent
hi Normal guibg=NONE ctermbg=NONE

let g:SuperTabDefaultCompletionType = "<c-n>"
