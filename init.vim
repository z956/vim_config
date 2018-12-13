set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set guicursor=

" set <ESC> to go to normal mode in terminal
tnoremap <ESC> <C-\><C-n>

command VT vs term://$SHELL
command ST sp term://$SHELL
