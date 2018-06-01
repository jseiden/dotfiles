set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin()
Plug 'vimwiki/vimwiki'
Plug '~/.fzf'
" Plug 'https://github.com/Alok/notational-fzf-vim'
Plug 'vim-scripts/indent-python.vim'
Plug 'jnurmine/Zenburn'
call plug#end()
