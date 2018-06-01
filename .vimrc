" sensible.vim - Defaults everyone can agree on
" " Maintainer:   Tim Pope <http://tpo.pe/>
" " Version:      1.2
"
if exists('g:loaded_sensible') || &compatible
  finish
else
   let g:loaded_sensible = 'yes'
endif

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use :help 'option' to see the documentation for the given option.

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set nrformats-=octal

if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set laststatus=2
set ruler
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

if &shell =~# 'fish$' && (v:version < 704 || v:version == 704 && !has('patch276'))
  set shell=/bin/bash
endif

set autoread

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

inoremap <C-U> <C-G>u<C-U>

" vim:set ft=vim et sw=2:

" end vim-sensible
"
" Set the background theme to dark
set background = "dark"
" edit other buffers while unsaved buffers exist
set hidden
" show line numbers
set number
" show cmd in bottom bar
set showcmd
" highlight current line
set cursorline
" redraw only when we need to
set lazyredraw
" show matching bracket etc
set showmatch
" highlight search results
set hlsearch
" use case in search if caps used
"set smartcase
set ignorecase
" flash screen instead of warning beep
set visualbell
" split dir
set splitbelow
set splitright

" Visual linewise up and down by default (and use gj gk to go quicker)
nnoremap j gj
nnoremap k gk
nnoremap gj 5j
nnoremap gk 5k
vnoremap j gj
vnoremap k gk
vnoremap gj 5j
vnoremap gk 5k
" center screen when jumping to next match
nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz
nnoremap * *Nzz
nnoremap # #nzz
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Same when moving up and down
 nnoremap <C-u> <C-u>zz
 nnoremap <C-d> <C-d>zz
 nnoremap <C-f> <C-f>zz
 nnoremap <C-b> <C-b>zz
 vnoremap <C-u> <C-u>zz
 vnoremap <C-d> <C-d>zz
 vnoremap <C-f> <C-f>zz
 vnoremap <C-b> <C-b>zz

" Don't cancel visual select when shifting
xnoremap <  <gv
xnoremap >  >gv

" Keep the cursor in place while joining lines
nnoremap J mzJ`z
 
" Buffers navigation and management
nnoremap <silent> + :bn<CR>
nnoremap <silent> _ :bp<CR>

" remap leader
let mapleader=','
" let mapleader=' '

" backup settings
" set backup
" set backupdir=
" set dir= /home/user1/backup
set noswapfile

" trying em out
set ttimeout
set ttimeoutlen=100

set clipboard=unnamed 

" used for diacritics and symbols
set digraph

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

nnoremap <Leader><Leader> :noh<cr>
nnoremap <Leader>n :bnext<cr>
nnoremap <Leader>p :bprev<cr>
nnoremap <Leader>l :ls<cr>   
nnoremap <Leader>v :source ~/.vimrc<cr>
nnoremap <Leader>c :w !diff % -<cr>
nnoremap <Leader>bd :bd<cr>
nnoremap <Leader>t :%s/\s\+$//e<cr><cr>
nnoremap <Leader>w :w<cr>   

" inoremap jj <Esc>
" inoremap jk <Esc>

 " Remap F1 from Help to ESC.  No more accidents.
nmap <F1> <Esc>
map! <F1> <Esc>
 
" map . .[;

" allegedly adds proper PEP8 indentation on .py file
" au BufNewFile,Bufread *.py
" 	\ set tabstop=4
" 	\ set softtabstop=4
" 	\ set shiftwidth=4
" 	\ set textwidth=79
" 	\ set expandtab
" 	\ set autoindent
" 	\ set fileformat=unixo
" 
" au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

