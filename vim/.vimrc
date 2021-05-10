if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
call plug#end()

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"Convert markdown to pdf with C-a 
nnoremap <C-a> :!pandoc % --pdf-engine=xelatex -o %.pdf<CR>

"Move backups to another folder to not pollute git repos 
set dir="~/.vimswp" 

"CtrlP 
"Excluding common directories
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
set wildignore+=*/node_modules/*

"Enable relative numbers
set number                     " Show current line number
set relativenumber             " Show relative line numbers

"Set <tab> to 4 spaces
set expandtab
set tabstop=4

