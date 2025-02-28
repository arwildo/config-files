" Display
syntax on
set encoding=utf-8
set nocompatible
set mouse=

" History
set history=50

" Display
set showmode
set showcmd
set ruler
set title
set number
set ai
set hlsearch
set vb

" Backspace
set backspace=indent,eol,start

" Line wrapping
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
