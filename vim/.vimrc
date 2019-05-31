if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'w0rp/ale'
    Plug 'sheerun/vim-polyglot'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set nocompatible
set number relativenumber
set linebreak 
set showbreak=+++
set textwidth=100
set showmatch
set visualbell
set cursorline
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set backspace=indent,eol,start
set hidden
set laststatus=2
set showmode
set showcmd 
set lazyredraw
set nowritebackup

hi CursorLine term=bold cterm=bold
filetype plugin indent on
syntax on

let g:OmniSharp_server_stdio = 1
" Make Fuzzy Finding ignore .gitignore files (thanks @tpope)
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
