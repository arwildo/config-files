" Display
syntax on
set encoding=utf-8
set nocompatible
set mouse=
set showmode
set showcmd
set ruler
set title
set number
set ai
set vb

" History
set history=50


" Plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

call plug#end()

" NERDTree side bar toggle
nnoremap <C-n> :NERDTreeToggle<CR>


" Backspace
set backspace=indent,eol,start

" Line wrapping
set hlsearch
set nowrap
set linebreak
set showbreak=▹

" Searching
set ignorecase
set smartcase
set hlsearch
set showmatch
set path+=**

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" Completion
set wildmenu

" Folding (disabled in vanilla Vim)
set nofoldenable

" Performance optimizations
set timeoutlen=1000
set ttimeoutlen=0
set ttyfast

" Shortcut
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>
map <C-Tab> <Nop>

" Other
set wildignore=*.swp,*.bak,*.pyc,*.class,*.dat
set nobackup
set noswapfile
set splitright
set paste
