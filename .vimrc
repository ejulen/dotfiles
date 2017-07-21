set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
call vundle#end()
filetype plugin indent on

set number
set relativenumber
" Makes backspace work normally. Otherwise it might not be able to backspace
" over newlines and stuff, and that's just plain weird.
set backspace=2
" Use spaces instead of tabs.
set expandtab
set shiftwidth=2
set softtabstop=2
" Auto-indentation.
set autoindent
set copyindent
set smartindent

" Exclude certain files and folders in CtrlP
set wildignore+=**/node_modules
let g:ctrlp_custom_ignore = '\v[\/](node_modules)'

" Make search more bearable
set ignorecase
set incsearch

syntax on

" Needed for webpack --watch to work on certain platforms
set backupcopy=yes

" Show matching brackets
set showmatch

set noswapfile

autocmd vimenter * NERDTree
" Focuses the main window instead of NERDTree
autocmd vimenter * wincmd p

" Use HTML syntax highlighting in .marko files for now
autocmd bufread,bufnewfile *.marko set filetype=html
