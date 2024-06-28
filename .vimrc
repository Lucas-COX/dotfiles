call plug#begin()

" Language specific
Plug 'vim-scripts/c.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mechatroner/rainbow_csv'
Plug 'ekalinin/Dockerfile.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

" Global
Plug 'sheerun/vim-polyglot'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-sensible'

" Utility
Plug 'junegunn/fzf.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'

" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'crusoexia/vim-monokai'
Plug 'preservim/nerdtree'

" Random
Plug 'junegunn/goyo.vim'
Plug 'romainl/vim-cool'
Plug 'vimsence/vimsence'
Plug 'ryanoasis/vim-devicons'

call plug#end()

set nocompatible

" Turn syntax highlighting on
syntax on
colorscheme monokai
set termguicolors

" Enable icons
set encoding=UTF-8

" Line numbers
set number

" Use spaces for indentation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Always show git sign column
set signcolumn=yes

" Use ctrl-[hjkl] to select the active split
map <C-k> :wincmd k<CR>
map <C-j> :wincmd j<CR>
map <C-h> :wincmd h<CR>
map <C-l> :wincmd l<CR>

" DoGe settings
let g:doge_doxygen_settings = { 'char': '@' }

" GitGutter theme
hi GitGutterAdd    guifg=#d7ffaf ctermfg=193
hi GitGutterChange guifg=#FD9720 ctermfg=208
hi GitGutterDelete guifg=#e73c50 ctermfg=196

" Transparent background
hi Normal ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi LineNr ctermbg=NONE guibg=NONE

" FZF
map <C-p> :FZF<CR>
map <C-f> :Rg<CR>

" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Disable conceal
let g:indentLine_setConceal = 0
