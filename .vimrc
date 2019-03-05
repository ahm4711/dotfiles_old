call plug#begin() " Plug 'vim-scripts/ShowMarks'
" Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'romainl/vim-qf'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-commentary'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-obsession'
call plug#end()

filetype plugin indent on
" known extensions
autocmd BufNewFile,BufRead *.sln,*.props,*.csproj set ft=xml
" Vimscript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
if has('gui')
	set guioptions -=m
	set guioptions -=T
	set guifont=Monospace\ 12
endif
"
" color theme stuff {{{
set background=dark
set termguicolors
let g:gruvbox_italic=1
let g:gruvbox_hls_cursor='blue'
" let g:gruvbox_guisp_fallback='bg'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox
" }}}
"
" set the leader key to space
let mapleader = " "
let maplocalleader = "\\"
set nocompatible
" backspace behaves as expected
set backspace=indent,eol,start
" enable spell checking
set spell
set spellfile=~/.vim/spell/en.utf-8.add
set number
set wildmenu
set wildmode=longest,list
set autowrite
" set encoding=utf8
set list listchars=tab:»·,trail:·
"set autochdir
" undo and backup
set nobackup
set backupdir=~/.vim/tmp//
set directory=~/.vim/tmp//
set undofile
set undodir=~/.vim/tmp//
" git stuff
noremap <leader>gs :Gstatus<CR>
noremap <leader>gp :Gpush<CR>
noremap <leader>gl :Gpull<CR>
noremap <leader>gf :Gfetch<CR>
" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" window mappings
set wmh=0
noremap <leader>1 :on!<CR>
noremap <leader>2 :on!<CR>:vsp<CR>
noremap <leader>3 :on!<CR>:vsp<CR><C-w>l:sp<CR>
noremap <leader>4 :on!<CR>:sp<CR>:vsp<CR><C-w>j:vsp<CR>
noremap <leader>5 :on!<CR>:vsp<CR>:sp<CR><C-w>l:sp<CR>:sp<CR>
" Record into register 'q', playback with 'Q' also disables EX mode...
nnoremap Q @q
nnoremap <leader>ex :Explore<cr>
" allow nice edit of vimrc
nnoremap <leader>ev :edit! $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" search current word
noremap <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
noremap <F8> :cnext<CR>
noremap <S-F8> :cprev<CR>
" run commands from line
noremap <F11> :exec '!' . getline('.')<CR>
noremap <F12> :silent call system(getline('.') . " &")<CR>

noremap <leader>q :bd<CR>
noremap <leader>w :w<CR>
" save time use jk to esc
inoremap jk <esc>
inoremap <esc> <nop>

" buffer navigation
nnoremap <silent> [b :bprev<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
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

" set some persistence options
set viminfo='1000,f1,<500,h
" search
nnoremap <silent> <esc><esc> :nohls<cr>
" nnoremap <silent> <C-l> :nohls<cr><C-l>
set incsearch
set hlsearch
set ignorecase
set smartcase

" autocompletion
set dictionary+=~/.vim/dict/vs2017.txt
set complete+=k
set iskeyword+=.
