"" VUNDLE and PLUGINS """""""""""""""""""""""""""

" the following is required for Vundle plugin manager
" disable vi compatability
set nocompatible 
" don't detect filetype
filetype off
" put Vundle in path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins  
 Plugin 'gmarik/Vundle.vim'

" extend text objects etc.
 Plugin 'tpope/vim-surround'
 Plugin 'tpope/vim-unimpaired'
 Plugin 'tpope/vim-repeat'
 Plugin 'tpope/vim-ragtag'
 Plugin 'wellle/targets.vim'
 
" use programs outside vim
 Plugin 'thinca/vim-quickrun'
 Plugin 'jez/vim-superman'
 Plugin 'christoomey/vim-tmux-navigator'

" visual aid
 Plugin 'bling/vim-airline'
 Plugin 'unblevable/quick-scope'
 " Plugin 'nathanaelkane/vim-indent-guides'

" search
 Plugin 'kien/ctrlp.vim'

" completion etc.
 Plugin 'ervandew/supertab'
 Plugin 'jiangmiao/auto-pairs'
 Plugin 'osyo-manga/vim-over'

" lang specific 
 Plugin 'pangloss/vim-javascript'
 Plugin 'walm/jshint.vim'

" colors
 Plugin 'skammer/vim-css-color'
 " Plugin 'romainl/Apprentice'

" misc
 Plugin 'sjl/gundo.vim'
 Plugin 'maxbrunsfeld/vim-yankstack'
 Plugin 'tpope/vim-vinegar'
 Plugin 'tpope/vim-commentary'
 Plugin 'vim-auto-save'
" Plugin 'Shougo/vimproc.vim'

" required for Vundle
call vundle#end()           

" required after Vundle 
filetype plugin indent on   

" enable included matchit.vim plugin (for matching html tags)
runtime macros/matchit.vim


"" GENERAL SETTINGS """""""""""""""""""""""""""

" share clipboard with osx
set clipboard=unnamed

" enable mouse in (a)ll modes 
set mouse=a

" flash screen instead of annoying beep for error
set visualbell 

" enable switching between unsaved buffers
set hidden 

" refresh unsaved files if changed elsewhere (unless deleted)
set autoread

" redraw less often
set lazyredraw 

" for fast terminal connection. let vim redraw faster
set ttyfast

" time between key presses 
set timeoutlen=300 ttimeoutlen=300

" enable syntax highlighting 
syntax on 

" display current mode
set showmode  

" always show status line
set laststatus=2

" display last command
set showcmd

" display line numbers 
set number

" number of lines below cursor
set scrolloff=3

" ignore case while searching (smartcase is another option)
set ignorecase

" show results while typing 
set incsearch 
" highlight search
set hlsearch  

 " show matching brace etc.
set showmatch 

" highlight cursor pos 
set cursorline 
hi cursorline cterm=none
hi cursorlinenr ctermfg=red

" omnicomplete settings
set omnifunc=syntaxcomplete#Complete

" predictive stuff
set wildmode=longest,list,full
set wildmenu 

" don't autotab when pasting
" set paste seems to mess up delimitMate
"set paste

" turn off auto comment insertion
set formatoptions-=cro

" append to buffer on new line
set cpoptions+=>

" make backspace work in insert mode
set backspace=2

" make tabs = spaces and other tab behavior 
set expandtab 
set smarttab
set shiftwidth=2

" splitting a window will put new window to the right of current one 
set splitright

" predict indent on new line (autoindent is another option)
set smartindent

" wrap settings
set nowrap
set textwidth=80
set formatoptions+=t

" stay at same column when changing lines  
set nostartofline

" increment/decrement letters in normal mode with <C-a> and <C-x> (like numbers)
set nrformats=octal,hex,alpha


"" MAPPINGS """""""""""""""""""""""""""

" define leader key
let g:mapleader="\<Space>" 

" delete whole command-line like Emacs. replaces 'digraph'
cnoremap <C-K> <C-E><C-U>

" go to beginning of command-line like emacs and OS X
cnoremap <C-A> <C-B>

" remap Q to avoid accidental Ex mode- can still type :ex if need be
nnoremap Q <nop>

" remove highlight from search results
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
nnoremap <Leader><Leader> :nohlsearch<Bar>:echo<CR>

" semicolon twice to open vim command line 
nnoremap ;; :

" press enter to go to line number like G or gg
nnoremap <CR> G

" shortcut for external command 
nnoremap ! :!

" behavior during fFtT
" nnoremap <expr> ; getcharsearch().forward ? ';' : ',' 
" nnoremap <expr> , getcharsearch().forward ? ',' : ';' 

" center search results
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz

" don't lose selection during multiple indents
xnoremap <  <gv
xnoremap >  >gv

" go to end of line when pasting
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

"" LEADER MAPPINGS ""

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

" move lines around a la sublime text
nnoremap <Leader>j :m+<cr>==
vnoremap <Leader>j :m'>+<cr>gv=gv
nnoremap <Leader>k :m-2<cr>==
vnoremap <Leader>k :m-2<cr>gv=gv

" <Leader>p is defined in plugin section for yankstack

" run js file in node
nnoremap <Leader>n :!node %<CR>

" quit
nnoremap <Leader>q :q<CR>

" <Leader>r is assigned to QuickRun. think 'run!'

" source this config
nnoremap <Leader>sv :source $MYVIMRC<CR>

" fuzzy find and open using v
" TODO: fix v opening in different vim instance or switch plugins 
nnoremap <Leader>v :!v<Space>

" save buffer
nnoremap <Leader>w :write<CR>

" Surround word with quotes
map <Leader>' ysiw'
map <Leader>" ysiw"

" Add Trailing Semi-colon
map <Leader>; g_a;<Esc>

" move to specific numbered buffer
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

" common Vundle commands 
cabbrev PI PluginInstall
cabbrev PC PluginClean

" set Mark for last file of given type
autocmd BufLeave *.css,*.less,*scss normal! mC
autocmd BufLeave *.html             normal! mH
autocmd BufLeave *.js               normal! mJ
autocmd BufLeave *.php              normal! mP
autocmd BufLeave vimrc,*.vim        normal! mV

" change working dir to that of current file
autocmd BufEnter * silent! lcd %:p:h

" save folds between sessions
" TODO: fix error due to mkview on blank files
autocmd BufWinLeave * silent mkview
autocmd BufWinEnter * silent loadview

" open location/quickfix automatically when list is available
augroup autoquickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost    l* lwindow
augroup END

" save buffers when focus is lost 
au FocusLost *.* :wa
au FocusLost *.* silent! wa

" automatically reload .vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" change cursor based on mode
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" reset term layout after quitting vim. hides vim buffer and displays old shell
if &term =~ "xterm"
    let &t_ti = "\<Esc>[?47h"
    let &t_te = "\<Esc>[?47l"
endif

" TODO:
" try to enable meta (alt) key. would add lots of room for cool stuff
"execute "set <M-e>=\ee"


"" PLUGIN SPECIFIC SETTINGS """""""""""""""""""""""""""""""""""""""""""""""""""

" vim-airline enable the list of buffers on top
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

" vim-csscolor
" let g:cssColorVimDoNotMessMyUpdatetime = 1
