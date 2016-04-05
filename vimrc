"" VUNDLE and PLUGINS """""""""""""""""""""""""""


" required for Vundle plugin manager
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins  
Plugin 'gmarik/Vundle.vim'

" extend text objects etc
 Plugin 'tpope/vim-surround'
 Plugin 'tpope/vim-unimpaired'
 Plugin 'tpope/vim-repeat'
 Plugin 'tpope/vim-ragtag'
 Plugin 'justinmk/vim-sneak'

" use programs outside vim
 Plugin 'thinca/vim-quickrun'
 Plugin 'jez/vim-superman'
 Plugin 'christoomey/vim-tmux-navigator'

" misc
 Plugin 'sjl/gundo.vim'
 Plugin 'chrisbra/NrrwRgn'
 Plugin 'maxbrunsfeld/vim-yankstack'
 Plugin 'tpope/vim-vinegar'
 Plugin 'tpope/vim-commentary'
 Plugin 'vim-auto-save'
" Plugin 'Shougo/vimproc.vim'

" visual aide
 Plugin 'bling/vim-airline'
 Plugin 'nathanaelkane/vim-indent-guides'
 Plugin 'unblevable/quick-scope'
" Plugin 'easymotion/vim-easymotion'

" search
 Plugin 'kien/ctrlp.vim'

" completion
 Plugin 'ervandew/supertab'
 Plugin 'jiangmiao/auto-pairs'

" lang specific 
 Plugin 'pangloss/vim-javascript'
 Plugin 'walm/jshint.vim'

" colors
 Plugin 'romainl/Apprentice'
 Plugin 'skammer/vim-css-color'


" required for Vundle
call vundle#end()           

" required after Vundle stuff 
filetype plugin indent on   

"" GENERAL SETTINGS """""""""""""""""""""""""""
syntax on 

" define leader key
let g:mapleader="\<Space>" 

" enable switching between unsaved buffers
set hidden 

" set lines=35 columns=150
" set colorcolumn=0

" enable matchit plugin (for matching html tags)
runtime macros/matchit.vim
 " shows matching brace etc.
set showmatch 

" omnicomplete settings
set omnifunc=syntaxcomplete#Complete

" displays current mode
set showmode  

" displays last command
set showcmd

" line numbers 
set number

" number of lines below cursor
set scrolloff=2

" highlight cursor pos 
set cursorline 
hi cursorline cterm=none
hi cursorlinenr ctermfg=red

" don't autotab when pasting
" set paste seems to mess up delimitMate
"set paste

" refresh unsaved files 
set autoread

" shows results while typing 
set incsearch 
" highlights search
set hlsearch  

" case insensitive when lowercase but not upper
set smartcase

" predictive stuff?
set wildmode=longest,list,full
set wildmenu 

" redraws less often
set lazyredraw 

" fast terminal connection
set ttyfast

" flash screen instead of beeping for error
set visualbell 

" turn off auto comment insertion
set formatoptions-=cro

" append to buffer on new line
set cpoptions+=>

" always show status line
set laststatus=2

" make backspace work in insert mode
set backspace=2

" splitting a window will put new window to the right of current one 
set splitright

" time between key presses 
set timeoutlen=300 ttimeoutlen=300

" makes tabs = spaces and other tab behavior 
set expandtab 
set smarttab
set shiftwidth=2

" autoindent, unlike cindent, doesnt interfere with filetype based indentation 
set autoindent
"set smartindent

" wrap settings
set nowrap
set textwidth=80
set formatoptions+=t

" shares clipboard with osx
set clipboard=unnamed

" make clickable
set mouse=a
"??
" set modifiable 

" stay at same column when changing lines  
set nostartofline

" increment/decrement letters with <C-a> and <C-x> (like numbers)
set nrformats=octal,hex,alpha



"" MAPPINGS """""""""""""""""""""""""""


" delete whole line on command-ine like Emacs. replaces 'digraph'
cnoremap <C-K> <C-E><C-U>

" remap Q to avoid accidental Ex mode- can still type :ex if need be
nnoremap Q <nop>

" remove hilight from search results
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
nnoremap <Leader><Leader> :nohlsearch<Bar>:echo<CR>

" semicolon twice to open vim command line 
nnoremap ;; :

" behavior during fFtT
" nnoremap <expr> ; getcharsearch().forward ? ';' : ',' 
" nnoremap <expr> , getcharsearch().forward ? ',' : ';' 

" press enter to go to line number like G or gg
nnoremap <CR> G

" center search results
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz

" shortcut for external command 
nnoremap ! :!

" don't lose selection during multiple indents
xnoremap <  <gv
xnoremap >  >gv

" insert mode shortcuts
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O
inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u

" go to end of line when pasting
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

"" LEADER MAPPINGS ""
" *try to keep alphabetical

" switch to alertnatve buffer
nnoremap <Leader>a <C-^>

" quick buffer switching by number. brings up list. type number then enter
nnoremap <Leader>b :buffers<CR>:buffer<Space>

" close buffer
nnoremap <Leader>bd :bd<CR>

" next/prev buffer
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>

" diff edited buffer with saved version
nnoremap <Leader>d :w !diff % -<CR>

" toggle Gundo tree
nnoremap <Leader>g :GundoToggle<CR>

" yank line to new buffer
vnoremap <Leader>h y:vnew<CR>p
nnoremap <Leader>h yy:vnew<CR>p 
" inoremap <Leader>h <Esc>yy:vnew<CR>p

" move lines around a la sublime text
nnoremap <Leader>j :m+<cr>==
vnoremap <Leader>j :m'>+<cr>gv=gv
"inoremap <Leader>j <esc>:m+<cr>==gi
nnoremap <Leader>k :m-2<cr>==
vnoremap <Leader>k :m-2<cr>gv=gv
"inoremap <Leader>k <esc>:m-2<cr>==gi

" <Leader>p is defined in plugin section for yankstack

" run js file in node
nnoremap <Leader>n :!node %<CR>

" quit
nnoremap <Leader>q :q<CR>

" <Leader>r is assigned to QuickRun. think 'run!'

" open plugin Scratch buffer
nnoremap <Leader>s :Scratch<CR>

" source this config
nnoremap <Leader>sv :source $MYVIMRC<CR>

" fuzzy find and open using v
nnoremap <Leader>v :!v<Space>

" save buffer
nnoremap <Leader>w :write<CR>

" Surround word with quotes
map <Leader>' ysiw'
map <Leader>" ysiw"
"
" Add Trailing Semi-colon
map <Leader>; g_a;<Esc>

" move to specific buffers
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>



"" MISC """"""""""""""""""""""""""""""""""""""""""""""""""

cabbrev PI PluginInstall
cabbrev PC PluginClean

" clear term on exit
" au VimLeave * :!clear

" set Mark for last file of given type
autocmd BufLeave *.css,*.less,*scss normal! mC
autocmd BufLeave *.html             normal! mH
autocmd BufLeave *.js               normal! mJ
autocmd BufLeave *.php              normal! mP
autocmd BufLeave vimrc,*.vim        normal! mV

" change working dir to current file
autocmd BufEnter * silent! lcd %:p:h

" open location/quickfix window when list is available
augroup autoquickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost    l* lwindow
augroup END
" save buffers when focus is lost 
au FocusLost * :wa
au FocusLost * silent! wa

" automatically reload .vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" change cursor based on mode
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" term layout after quitting
if &term =~ "xterm"
    let &t_ti = "\<Esc>[?47h"
    let &t_te = "\<Esc>[?47l"
endif

"TODO:
" trying to enable meta (alt) key. would add lots of room for cool stuff
"execute "set <M-e>=\ee"



"" PLUGIN SPECIFIC SETTINGS """""""""""""""""""""""""""""""""""""""""""""""""""

" vim-airline Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" vim-ragtag 
let g:ragtag_global_maps = 1

" auto pairs
let g:AutoPairsFlyMode = 1

" Autosave
" enable AutoSave on Vim startup
let g:auto_save = 1  
" do not save while in insert mode
let g:auto_save_in_insert_mode = 0  

" yankstack plugin- go back in yank time  after pasting once
nmap <Leader>p <Plug>yankstack_substitute_older_paste
nmap <Leader>P <Plug>yankstack_substitute_newer_paste

" vim-sneak- remap s and S to gs and gs S  to preserve default s behavior
" let g:sneak#streak = 1
nmap s = <Plug>Sneak_s
nmap S = <Plug>Sneak_S
