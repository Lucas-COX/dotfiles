" Vim plug stuff
call plug#begin()

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ayu-theme/ayu-vim'

" Fuzzy File Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Development Plugins
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'neovimhaskell/haskell-vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'

" Interface stuff
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
Plug 'thoughtbot/vim-rspec'

call plug#end()

" Theming
set termguicolors
set cursorline
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

" Enable syntax
syntax on

" Change leader key to <space>
let mapleader=" "

" Enable plugin, indent and filetype
filetype plugin indent on

" Clipboard
set clipboard=unnamed

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Mouse handling
set mouse=a

" File format
set fileformat=unix
set encoding=utf-8

" Line numbers
set number

" Ensure lines are not longer thant 80 characters
set textwidth=79

" Better tab experience
map <leader>tn :tabnew<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

" Better split experience
set splitbelow
set splitright
map <C-j> <C-W><C-J>
map <C-k> <C-W><C-K>
map <C-l> <C-W><C-L>
map <C-h> <C-W><C-H>

" You Complete Me
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']

" Ctrl + P to Fuzzy File Finder
map <C-p> :FZF<cr>

" NerdTree stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" Airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Python stuff
let g:python3_host_prog = '/home/lucas/.pyenv/versions/vim/bin/python3'

" IndentLine
let g:indentLine_setColors = 1
let g:indentLine_setConceal = 0

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

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Running specs
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
