" Jaseung Ku

" Basic Settings
"
" Indent Options
set autoindent
set tabstop=4

" Search Options
set hlsearch
set ignorecase
set smartcase

" Text Rendering Options
set encoding=utf-8
set wrap 
"set spell spelllang=en_us
syntax enable

" User Interface Options
set wildmenu
set number
set relativenumber
set showmatch
set showcmd
set clipboard=unnamedplus

" Code Folding Options
"set foldmethod=indent

" remap keys
inoremap jk <esc>

let mapleader = " "  " map leader key
nnoremap <CR> :noh<CR><CR>
nnoremap <leader>ev :sp $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"call plug#begin('~/.vim/plugged')
"Plug 'preservim/nerdtree'    "file tree
"Plug 'davidhalter/jedi-vim'  "autocomplete
"Plug 'sheerun/vim-polyglot'  "language packs
"call plug#end()

" I'm using Vim's naive package manangement.
" Plugins are under $HOME/.vim/pack/plugins/start or $HOME/.vim/pack/plugins/opt.
