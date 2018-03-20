if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'sickill/vim-monokai'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

" relative line number with current line
set number relativenumber
set numberwidth=3

"normal ctrl+c/ctrl+v 
set clipboard=unnamedplus

"theme
syntax enable
colorscheme monokai

"ale linting plugin config
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

"linters
let g:syntastic_javascript_checkers = ['eslint']

"NERDtree config
autocmd vimenter * NERDTree " open automatically
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " closes vim if only NERDtree open
map <C-b> :NERDTreeToggle<CR>

