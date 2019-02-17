call plug#begin()
"Plug 'tpope/vim-sensible'
" Plug 'fatih/molokai'
Plug 'maksimr/Lucius2'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'haya14busa/incsearch.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/unimpairedj'
" Plug 'sheerun/vim-polyglot'
call plug#end()

" set the leader key to space
let mapleader = " "
let maplocalleader = "\\"
filetype plugin on
set nocompatible
set number
set wildmenu
colorscheme lucius

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

" set timeoutlen=2000 
" set ttimeoutlen=2000
"
"
" search
nnoremap <silent> <esc><esc> :nohls<cr>
nnoremap <silent> <C-l> :nohls<cr><C-l>
set incsearch
set hlsearch
set ignorecase
set smartcase
" incsearch.vim 
" let g:incsearch#auto_nohlsearch = 1
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)
" map *  <Plug>(incsearch-nohl-*)
" map #  <Plug>(incsearch-nohl-#)
" map g* <Plug>(incsearch-nohl-g*)
" map g# <Plug>(incsearch-nohl-g#)


