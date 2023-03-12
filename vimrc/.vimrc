" Display
syntax on
set t_Co=256
syntax enable
set nowrap
set showcmd

" Vim-Plug
"______________________________________________________________________________"
call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'


call plug#end()
"______________________________________________________________________________"

" Theme
colorscheme onedark

" Brackets Colorizer
let g:rainbow_active = 1

" Vim-Airline
"let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Other
set ai
set number
set hlsearch
set ruler
