# install on new comp

cd ~
git init .
mv .gitconfig .gitconfig.old
git remote add origin https://github.com/ahm4711/dotfiles.git
git pull origin master
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Movement Mappings
onoremap p i(
onoremap in( :<c-u>normal! f(vi(<cr>

# dotfiles
change to dir of current file
:cd %:h

[s ]s navigate spelling errors
z= correct word
zg add current word to spell file
zw remove current word from spell file

Select the first block: ctrl-v move "ay
Select the second block: ctrl-v move c ctrl-o "aP <Esc> 


Surround word with double quotes

ciw""<Esc>P
ciw'<C-r><C-o>"'<esc>


Swap words

yiw
viwp
#
viwp


Remove mapping from insert mode

iunmap MAPPING

Paste into command line

CTRL-R
	CTRL-W word 
	CTRL-A WORD
