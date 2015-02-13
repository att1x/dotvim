"pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"theme
set background=dark
colorscheme heroku
set guifont=Source\ Code\ Pro\ 10

"global options
set number
set showmatch
set matchtime=7
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set hidden
set laststatus=2

"set mapleaders
let mapleader = "-"

"uppercase the current word
inoremap <leader><c-u> <esc>viwU<esc>i
nnoremap <leader><c-u> viwU<esc>

"quick editing of .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"author abbreviations
iabbrev @@ sebastian.wiesner@tu-dresden.de

"unmap arrow and convenience keys
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
inoremap jk <esc>

"quick saving
inoremap <leader>w <c-o>:update<cr>
nnoremap <leader>w :update<cr>

"php space indentation
autocmd filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
