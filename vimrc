" Makes VIM backwards incompatible with VI.
set nocompatible
" Required for Vundle.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'wavded/vim-stylus'
Plugin 'digitaltoad/vim-jade'
Plugin 'lambdatoast/elm.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Ctrl-y, to expand (don't forget the comma!)
Plugin 'mattn/emmet-vim'
call vundle#end()
" Syntax highlighting.
syntax on
" Ignores case when searching.
set ignorecase
" Incremental search, like most other editors.
set incsearch
" Displays line numbers.
set number
" Makes backspace work normally. Otherwise it might not be able to backspace
" over newlines and stuff, and that's just plain weird.
set backspace=2
" Use spaces instead of tabs.
set expandtab
set shiftwidth=2
set softtabstop=2
" Auto-indentation.
set autoindent
filetype plugin indent on
" NERDTree on startup.
autocmd vimenter * NERDTree
" Ignores node_modules and jspm_packages directories, otherwise ctrlp will be polluted by files
" we're not interested in.
let g:ctrlp_custom_ignore = '\v[\/](node_modules|jspm_packages)'

" Without this webpack --watch and others do not work on certain platforms.
set backupcopy=yes

" Automatically reloads the .vimrc when it's changed.
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Re-indents the entire file.
nnoremap ,r mzgg=G`z

let g:syntastic_javascript_checkers = ['standard']

colorscheme hybrid
