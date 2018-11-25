" Installs and loads plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Loads plugins
call plug#begin('~/.vim/plugged')
" Syntax highlighting and linting
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ingydotnet/yaml-vim'
" Fuzzy Finder, installing it on vim AND bash
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Monokai Theme
Plug 'sickill/vim-monokai'
call plug#end()

" Relative line number with current line
set number relativenumber
set numberwidth=3

" Sets up theme and syntax highlighting
colorscheme monokai
syntax enable

" Normal ctrl+c/ctrl+v 
set clipboard=unnamedplus

" Indentation
filetype plugin indent on

" Show existing tab with 4 spaces width
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab
set shiftwidth=4
set softtabstop=4


" Ale linting plugin config
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

" Enable eslint
let g:syntastic_javascript_checkers = ['eslint']
