set nocompatible	" Don't try to be vi compatible
filetype off		" Helps force plugins to load correctly when it is turned back on below
syntax on		" Turn on syntax highlighting
filetype plugin indent on

set modelines=0		" Security
set visualbell		" Blink cursor on error instead of beeping (grr)
set encoding=UTF-8	" Encoding
set hidden		" Allow hidden buffers
set ttyfast		" Rendering
set laststatus=2	" Status bar
set showmode		" Last line show mode
set showcmd		" Last line show cmd

set number		" Show line numbers
set linebreak		" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch		" Highlight matching brace
set visualbell		" Use visual bell (no beeping)
 
set hlsearch		" Highlight all search results
set smartcase		" Enable smart-case search
set ignorecase		" Always case-insensitive
set incsearch		" Searches for strings incrementally
 
set autoindent		" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent		" Enable smart-indent
set smarttab		" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
set ruler		" Show row and column ruler information

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start		" Backspace behaviour
set clipboard=unnamed	" Set to can yank - paste in different terminal

""""" NERDTree Settings """""
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" to hide unwanted files
let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]

" show hidden files
" let NERDTreeShowHidden=1
