" Makes VIM backwards incompatible with VI.
set nocompatible
" Required for Vundle.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'othree/yajs.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'wavded/vim-stylus'
Plugin 'digitaltoad/vim-jade'
Plugin 'mxw/vim-jsx'
call vundle#end()
" Syntax highlighting.
syntax on
" Ignores case when searching.
set ignorecase
" Incremental search, like most other editors.
set incsearch
" Displays line numbers.
set number
" Use spaces instead of tabs.
set expandtab
set shiftwidth=2
set softtabstop=2
" Auto-indentation.
set autoindent
filetype plugin indent on
autocmd vimenter * NERDTree
let g:ctrlp_custom_ignore = 'node_modules'

" Automatically reloads the .vimrc when it's changed.
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Re-indents the entire file.
nnoremap ,r mzgg=G`z
