call plug#begin() " Plug 'vim-scripts/ShowMarks'
" Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'romainl/vim-qf'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
"Plug 'tpope/vim-sensible'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'haya14busa/incsearch.vim'
" Plug 'sheerun/vim-polyglot'
call plug#end()

set guioptions -=m 
set guioptions -=T
set guifont=Monospace\ 12

set background=dark
set termguicolors
let g:gruvbox_italic=1
let g:gruvbox_hls_cursor='blue'
" let g:gruvbox_guisp_fallback='bg'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox
"
" set the leader key to space
let mapleader = " "
let maplocalleader = "\\"
filetype plugin on
set nocompatible
" backspace behaves as expected
set backspace=indent,eol,start
" enable spell checking
set spell
set spellfile=~/.vim/spell/en.utf-8.add
set number
set wildmenu
set autowrite
set nobackup
set backupdir=~/.vim/tmp//
set directory=~/.vim/tmp//
set undofile
set undodir=~/.vim/tmp//

set wmh=0
noremap <leader>1 :on!<CR>
noremap <leader>2 :on!<CR>:vsp<CR>
noremap <leader>3 :on!<CR>:vsp<CR><C-w>l:sp<CR>
noremap <leader>4 :on!<CR>:sp<CR>:vsp<CR><C-w>j:vsp<CR>
noremap <leader>5 :on!<CR>:vsp<CR>:sp<CR><C-w>l:sp<CR>:sp<CR>

nnoremap <leader>ex :Explore<cr>
" allow nice edit of vimrc
nnoremap <leader>ev :edit! $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" search current word
noremap <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
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


