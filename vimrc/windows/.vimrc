" Display
syntax on
set encoding=utf-8
set nocompatible
filetype off
set mouse=

" History
set history=50

" Display
colorscheme minimalist
set showmode
set showcmd
set modeline
set ruler
set title
set nu
set ai
set number
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
set gdefault
set hlsearch
set showmatch
set path+=**

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab
set copyindent
set autoindent
set smartindent
autocmd FileType python setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class

" Completion
set wildmenu

" Folding
set nofoldenable
 
" Make it more faster
set timeoutlen=1000
set ttimeoutlen=0
set ttyfast

" Shortcut
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <silent> <C-y> :%YAPF<CR><C-y>
map <C-Tab> <Nop>

" Other
set noesckeys
set wildignore=*.swp,*.bak,*.pyc,*.class,*.dat
set nobackup
set noswapfile
set splitright
