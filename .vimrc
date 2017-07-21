set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'ctrlpvim/ctrlp.vim'
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

" Exclude certain files and folders in CtrlP
set wildignore+=**/node_modules
let g:ctrlp_custom_ignore = '\v[\/](node_modules)'
