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

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
