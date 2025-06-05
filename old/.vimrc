filetype off
set nocompatible

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
Plugin 'preservim/nerdtree'
Plugin 'dikiaap/minimalist'
Plugin 'luochen1990/rainbow'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ervandew/supertab'
Plugin 'ap/vim-css-color'
Plugin 'prettier/vim-prettier'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'google/yapf', { 'rtp': 'plugins/vim' }

call vundle#end()

" Highlighting
syntax on
set encoding=utf-8

" Simbols highlighting
autocmd FileType python call <SID>def_base_syntax1()
function! s:def_base_syntax1()
    syntax match commonOperator "?\|+\|-\|\*\|<\|>\|&\||\|!\|\~\|%\|//\|=\|/\(/\|*\)\@!"
    syntax match baseDelimiter "\(,\|[.]\|;\|:\)"
    hi link commonOperator Operator
    hi link baseDelimiter Special
endfunction

autocmd FileType javascript,java call <SID>def_base_syntax2()
function! s:def_base_syntax2()
    syntax match commonOperator "?\|+\|-\|\*\|<\|>\|&\||\|!\|\~\|%\|=\|/\(/\|*\)\@!"
    syntax match baseDelimiter "\(,\|[.]\|;\|:\)"
    hi link commonOperator Operator
    hi link baseDelimiter Special
endfunction

" Bracket colorizer
let g:rainbow_active = 1  

" Airline config
let g:airline_theme="minimalist"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#whitespace#enabled = 0

" History
set history=50

" Display
colorscheme minimalist
hi Normal guibg=NONE ctermbg=NONE
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

" Disable mouse
set mouse=

" Completion
set wildmenu

" Folding
set nofoldenable

" NerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Prettier
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'

" Emmet
let g:user_emmet_leader_key=','

" Make it more faster
set timeoutlen=1000
set ttimeoutlen=0
set ttyfast

" Shortcut
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <silent> <C-y> :%YAPF<CR><C-y>

" Other
set noesckeys
set wildignore=*.swp,*.bak,*.pyc,*.class,*.dat
set nobackup
set noswapfile
set splitright
set noshowmode
