filetype off

let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'dikiaap/minimalist'

call vundle#end()
filetype plugin on 

" Highlighting
syntax on
set encoding=utf-8

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#whitespace#enabled = 0 

set term=screen-256color
colorscheme minimalist

" History
set history=50

" Display
set ls=2
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
"highlight Comment ctermfg=green

" Make backspace nicer
set backspace=eol,start,indent

" Line wrapping
set nowrap
set linebreak
set showbreak=▹

" Auto indent
set autoindent

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch

" Enable jumping into files in a search buffer
set hidden 

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Disable mouse
set mouse=

" Visual prompt for command completion
set wildmenu

" Folding
set nofoldenable

" Nerdtree shortcut
map <C-n> :NERDTreeToggle<CR>

set noesckeys
set nocompatible
