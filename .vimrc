filetype off

set runtimepath-=~/vimfiles
set runtimepath^=~/.vim
set runtimepath-=~/vimfiles/after
set runtimepath+=~/.vim/after

let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'dikiaap/minimalist'
Plugin 'mattn/emmet-vim'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-surround'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
Plugin 'luochen1990/rainbow'

call vundle#end()
filetype plugin on 

" Highlighting
syntax on
set encoding=utf-8

" Simbols hightlighting
autocmd FileType python call <SID>def_base_syntax1()
function! s:def_base_syntax1()
    syntax match commonOperator "?\|+\|-\|\*\|<\|>\|&\||\|!\|\~\|%\|//\|=\|/\(/\|*\)\@!"
    syntax match baseDelimiter "\(,\|;\|:\)"
    hi link commonOperator Operator
    hi link baseDelimiter Special
endfunction

autocmd FileType javascript,java call <SID>def_base_syntax2()
function! s:def_base_syntax2()
    syntax match commonOperator "?\|+\|-\|\*\|<\|>\|&\||\|!\|\~\|%\|=\|/\(/\|*\)\@!"
    syntax match baseDelimiter "\(,\|;\|:\)"
    hi link commonOperator Operator
    hi link baseDelimiter Special
endfunction



" Bracket colorizer
let g:rainbow_active = 1  

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#whitespace#enabled = 0 

" History
set history=50

" Display
set term=screen-256color
colorscheme minimalist
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

" Make backspace nicer
set backspace=indent,eol,start

" Line wrapping
set nowrap
set linebreak
set showbreak=▹

" Indent
set autoindent
"set cindent

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

" Emmet
let g:user_emmet_leader_key=','

set noesckeys
set nocompatible