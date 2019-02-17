call plug#begin()
"Plug 'tpope/vim-sensible'
" Plug 'fatih/molokai'
Plug 'maksimr/Lucius2'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'haya14busa/incsearch.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/unimpairedj'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
call plug#end()

" set the leader key to space
let mapleader = " "
let maplocalleader = "\\"
"
" save time use jk to esc
inoremap jk <esc>
inoremap <esc> <nop>
"
" buffer navigation
nnoremap <silent> [b :bprev<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
"
" move line up and down
nnoremap - :move +1
nnoremap _ :move -2
" add empty line
nnoremap <leader>o O<esc>

xnoremap <leader>p "_dP
" stamping
nnoremap S "_diwP
iabbrev ahm@ ahm@labcognition.com

set nocompatible
filetype plugin on
set number
set wildmenu
runtime macros/matchit.vim


noremap <leader>{ /{<CR>%

" allow nice edit of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" set timeoutlen=2000 
" set ttimeoutlen=2000
"
colorscheme lucius
" Re-source my vimrc, JIC
nnoremap <C-n> :NERDTreeToggle<CR>
"
"Search
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

" disable arrow key movement for educational purpose
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>

