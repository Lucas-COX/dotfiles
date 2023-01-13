" Vim plug stuff
call plug#begin()

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'neovimhaskell/haskell-vim' 
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'

call plug#end()

" You Complete Me
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Global stuff
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE
syntax on
let mapleader=" "

" Clipboard
set clipboard=unnamed

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
filetype plugin indent on

" Mouse handling
set mouse=a

" File format
set fileformat=unix
set encoding=utf-8

" Line numbers
set number

" Ensure lines are not longer than 80 characters
set textwidth=79

" Better tab experience
map <leader>tn :tabnew<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

" Better split experience
set splitbelow
set splitright
map <C-k> <C-W><C-J>
map <C-i> <C-W><C-K>
map <C-l> <C-W><C-L>
map <C-j> <C-W><C-H>

" Better terminal experience
map <C-t> :terminal<cr>i
tnoremap <Esc> <C-\><C-n>

" Ctrl + P to Fuzzy File Finder
map <C-p> :FZF<cr>

" Nerd Tree stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Python stuff
let python_highlight_all=1
let g:python3_host_prog = '/home/lucas/.pyenv/versions/vim/bin/python3'

" Haskell stuff
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
let g:cabal_indent_section = 2
