set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

if ! ( v:version < 703 || (v:version == 703 && !has('patch584')) )
    Bundle 'Valloric/YouCompleteMe'
    " YCM and eclim play nice
    let g:EclimCompletionMethod='omnifunc'
endif
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

filetype indent plugin on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

set nu

" increase buffer size
set viminfo='20,\"1000

set completeopt-=preview

set background=dark

set mouse=a

" search properties
set incsearch
set ignorecase
set smartcase

set foldmethod=syntax
set foldlevel=4

let NERDTreeShowLineNumbers=1
