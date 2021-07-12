" .vimrc
" Jaseung Ku

" Python settings
set autoindent
set tabstop=4		" how many spaces a tab takes up
set shiftwidth=4	" controls the depth of autoindentation
set expandtab		" convert all tabs to spaces
" set foldmethod=indent 	" Code folding options

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79	" PEP-8 Friendly

" set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

syntax enable
let python_highlight_all = 1	" enable all Python syntax highlightling feature

" End of python settings

" search options
set hlsearch	" highlight all serach results
set ignorecase  " do case insensitive search
set incsearch	" show incremental search results
set smartcase

set noswapfile	" disable swap file

" Text rendering options
set encoding=utf-8
set wrap 

" User interface options
set wildmenu
set number
"set relativenumber
set showmatch 	" show the maching part of the pair fo []  {} and ()
set showcmd
set clipboard=unnamedplus

""" no recursive map keys """ 
inoremap jk <esc>

let mapleader = " "
nnoremap <CR> :noh<CR><CR>
nnoremap <leader>ev :sp $MYVIMRC<cr>
nnoremap <leader>sv :w<cr> :source $MYVIMRC<cr>

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""" end of remap keys

" abbreviation
iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev @@ jaseung.ku@gmail.com

"call plug#begin('~/.vim/plugged')
"Plug 'davidhalter/jedi-vim'  "autocomplete
"call plug#end()

" I'm using Vim's naive package manangement.
" Plugins are under $HOME/.vim/pack/plugins/start or $HOME/.vim/pack/plugins/opt.
