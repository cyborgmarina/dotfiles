" General
set number	
set linebreak
set showbreak=+++
set textwidth=100
set showmatch	
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch	
 
set autoindent	
set shiftwidth=4
set smartindent	
set smarttab	
set softtabstop=4
 
" Advanced
set ruler	
set undolevels=1000	
set backspace=indent,eol,start	

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'editorconfig/editorconfig-vim'
call plug#end()
