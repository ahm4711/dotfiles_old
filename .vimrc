" Modeline and Notes {
 " vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
 "   You can find me at http://spf13.com
 " }
" Environment {
    " Basics {
         set nocompatible        " must be first line
     " }
     " Windows Compatible {
         " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
         " across (heterogeneous) systems easier. 
         if has('win32') || has('win64')
           set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
         endif
     " }
" }
" Plugins {
    call plug#begin()
        Plug 'ervandew/supertab'
        Plug 'junegunn/gv.vim'
        Plug 'morhetz/gruvbox'
        Plug 'nelstrom/vim-visual-star-search'
        Plug 'romainl/vim-qf'
        Plug 'scrooloose/nerdtree'
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-obsession'
        Plug 'tpope/vim-unimpaired'
        Plug 'vim-airline/vim-airline'
    call plug#end()
"}
" File format settings {
    " XML {
    let g:xml_syntax_folding=1
    autocmd FileType xml setlocal foldmethod=syntax
    " }
    " Visual Studio {
        augroup filetype_visualstudio
            autocmd!
            autocmd BufNewFile,BufRead *.sln,*.props,*.csproj
                        \ setlocal ft=xml |
                        \ setlocal foldmethod=syntax |
                        \ setlocal expandtab |
                        \ setlocal shiftwidth=2 |
                        \ setlocal softtabstop=2 |
                        \ :normal zR!
        augroup END
    "}
    " JSON {
        command! FormatJSON %!python -m json.tool
    " }
    " STJ library browsing {
        augroup filetype_stj
            autocmd!
            autocmd BufNewFile,BufRead *.content,*.library,*.substance,*.jsonc
                        \ setlocal ft=json |
                        \ setlocal suffixesadd+=.substance |
                        \ setlocal path+=/d/_src/stj-lib/substance/ |
                        \ setlocal nowrap
            autocmd BufRead *.substance
                        \ :%!python -m json.tool
        augroup END
    "}
" }
" Vim UI {
    if has('gui')
        set guioptions -=m
        set guioptions -=T
        set guifont=Monospace\ 12
    endif
    set background=dark
    set termguicolors
    " gruvbox colorsheme {
        let g:gruvbox_italic=1
        let g:gruvbox_hls_cursor='blue'
        " let g:gruvbox_guisp_fallback='bg'
        let g:gruvbox_contrast_dark='hard'
        let g:gruvbox_contrast_light='hard'
        colorscheme gruvbox
    " }
"}
" General {
set nowrap                       " do not wrap lines
syntax on                        " syntax highlighting
set viminfo='1000,f1,<500,h      " set persistence options
filetype plugin indent on        " automatically detect file types
set number                       " line numbers on
set showmatch                    " show matching bracket
set backspace=indent,eol,start   " backspace behaves as expected
set linespace=0                  " no space between rows
set cursorline                   " highlight current line
set autowrite                    " write the file when leaving a modified buffer
set wildmenu                     " show list instead of completing
set wildmode=list:longest,full   " list matches, then longest common part, then all
set winminheight=0               " windows can be 0 line high
set viewoptions=folds,options,cursor,unix,slash " better Unix / windows compatibility
set hidden
set virtualedit=onemore          " allow for cursor beyond last character
set list listchars=tab:»·,trail:·,extends:\#,nbsp:. " Highlight problematic white space
set path=.,**
"set autochdir
" set encoding=utf8
" }
" Spell checking {
    set spell
    set spellfile=~/.vim/spell/en.utf-8.add
"}
" Indentation {
    set autoindent     " indent at the same level of prev line
    set tabstop=4      " an indentation every 4  columns
    let shiftwidth=4   " use indents of 4 spaces
    let softtabstop=4  " let backspace delete indent
    set expandtab      " tabs are spaces, not tabs
"}
" Undo and backup {
    set nobackup
    set backupdir=~/.vim/tmp//
    set directory=~/.vim/tmp//
    set undofile
    set undodir=~/.vim/tmp//
"}
" Search {
    nnoremap <silent> <esc><esc> :nohls<cr>
    set incsearch
    set hlsearch
    set ignorecase
    set smartcase
" }
" Autocompletion {
    set dictionary+=~/.vim/dict/vs2017.txt  " visual studio commands
    set complete+=k
    set iskeyword+=.                        " . is also part of the keyword
" }
" Vimdiff {
    highlight Diffchange cterm=bold
    highlight DiffDelete guifg=black
    highlight DiffAdd cterm=bold
    autocmd FilterWritePre * if &diff | setlocal wrap | endif
" }
" set the leader key to space
let mapleader = " "
let maplocalleader = "\\"
" git stuff {
    noremap <leader>2 :diffget //2 <Bar> diffupdate<CR>
    noremap <leader>D :only<CR>
    noremap <leader>d :Gdiff<CR>
    noremap <leader>gw :Gwrite<Bar>cnext<Bar>Gdiff<CR>
    noremap <leader>gs :Gstatus<CR>
    noremap <leader>gp :Gpush<CR>
    noremap <leader>gm :Gmerge<CR>
    noremap <leader>gl :Gpull<CR>
    noremap <leader>gf :Gfetch<CR>
    "}
" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>
nnoremap <leader>f :find *
noremap <leader>w1 :on!<CR>
noremap <leader>w2 :on!<CR>:vsp<CR>
noremap <leader>w3 :on!<CR>:vsp<CR><C-w>l:sp<CR>
noremap <leader>w4 :on!<CR>:sp<CR>:vsp<CR><C-w>j:vsp<CR>
noremap <leader>w5 :on!<CR>:vsp<CR>:sp<CR><C-w>l:sp<CR>:sp<CR>
" Record into register 'q', playback with 'Q' also disables EX mode...
nnoremap Q @q
nnoremap <leader>ex :Explore<cr>
" allow nice edit of vimrc
nnoremap <leader>ev :edit! $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>pi :w<CR>:source $MYVIMRC<CR>:PlugInstall<CR>
" search current word
noremap <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
nnoremap <F5> :next **/*
nnoremap gb :buffers<CR>:buffer<Space>
noremap <F8> :cnext<CR>
noremap <S-F8> :cprev<CR>
" run commands from line
noremap <F11> :exec '!' . getline('.')<CR>
noremap <F12> :silent call system(getline('.') . " &")<CR>

noremap <leader>q :bd<CR>
noremap <leader>w :w<CR>
" save time use jk to esc
inoremap jk <esc>

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

" Search in all currently opened buffers {
function! ClearQuickfixList()
  call setqflist([])
endfunction
function! Vimgrepall(pattern)
  call ClearQuickfixList()
  exe 'bufdo vimgrepadd ' . shellescape(a:pattern) . ' %'
  cnext
endfunction
command! -nargs=1 Bgrep call Vimgrepall(<f-args>)
"}
