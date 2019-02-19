call plug#begin()
Plug 'maksimr/Lucius2'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-sensible'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'haya14busa/incsearch.vim'
" Plug 'tpope/unimpairedj'
" Plug 'sheerun/vim-polyglot'
call plug#end()

" colorscheme lucius
set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
"
" set the leader key to space
let mapleader = " "
let maplocalleader = "\\"
filetype plugin on
set nocompatible
" backspace behaves as expected
set backspace=indent,eol,start
set number
set wildmenu
set autowrite
set nobackup
set backupdir=~/.vim/tmp//
set directory=~/.vim/tmp//
set undofile
set undodir=~/.vim/tmp//
" allow nice edit of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" save time use jk to esc
inoremap jk <esc>
inoremap <esc> <nop>

" buffer navigation
nnoremap <silent> [b :bprev<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" disable arrow key movement for educational purpose
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
" move line up and down
nnoremap - :m .+1<CR>==
nnoremap _ :m .-2<CR>==
vnoremap - :m '>+1<CR>gv=gv
vnoremap _ :m '<-2<CR>gv=gv
nnoremap <Down> <Nop>
inoremap <Down> <Esc>:m .+1<CR>==gi
nnoremap <Up> <Nop>
inoremap <Up> <Esc>:m .-2<CR>==gi
" add empty line
nnoremap <leader>o O<esc>

" stamping
" nnoremap S "_diwP
iabbrev ahm@ ahm@labcognition.com

noremap <leader>{ /{<CR>%

" search
nnoremap <silent> <esc><esc> :nohls<cr>
nnoremap <silent> <C-l> :nohls<cr><C-l>
set incsearch
set hlsearch
set ignorecase
set smartcase


