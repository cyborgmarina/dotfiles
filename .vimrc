" >> Plugin Management {{{
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Need to install FZF
Plug 'editorconfig/editorconfig-vim' " need to install EditorConfig core
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive' 
Plug 'chriskempson/base16-vim'
Plug 'digitaltoad/vim-pug'
Plug 'mxw/vim-jsx'
Plug 'violetyk/cake3.vim'
call plug#end()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" }}}
" >> Colors {{{
set termguicolors
set t_Co=256
colorscheme base16-monokai
syntax enable
" }}}
" >> Spaces & Tabs {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" }}}
" >> UI Config {{{
set number
set relativenumber
set showcmd
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
hi Normal guibg=NONE ctermbg=NONE "transparent background
set wildmenu
set lazyredraw
set showmatch " highlight matching [{()}] 
set laststatus=2  
let g:neomake_javascript_enabled_makers = ['eslint']
let g:jsx_ext_required = 0

" Syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
" }}}
" >> Searching {{{
set incsearch
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" >> Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
" To unfold: za
" }}}
" >> Movement {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" }}}
" >> Leader Shortcuts & Other Keybindings {{{
let mapleader=","       " leader is comma

"NERDTree keybindings
map <C-n> :NERDTreeToggle<CR>

"FZF keybindings
map <C-p> :FZF<CR>

"Exit terminal mode on ESC
:tnoremap <Esc> <C-\><C-n>
"
" neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning
" }}}
" >> Sounds & Alarms {{{ 
set noerrorbells
set novisualbell
set t_vb=
set tm=600
" }}}
" >> Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" Modelines are special comments somewhere in a file that can can declare certain Vim settings to be used only for that file. 
set modelines=1
" vim:foldmethod=marker:foldlevel=0
