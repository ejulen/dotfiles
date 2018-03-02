" Requirements:
" - Neovim for Python, install with pip3 install --user neovim
" - Node
" - ag, the Silver Searcher
set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
" <leader><leader>f{char} to start search
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
" Remember to create a Tern config file as well.
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm i -g tern' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'tpope/vim-commentary'
" SetColors all, then F8 to toggle through available color schemes
Plug 'felixhummel/setcolors.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
" cs'" = ' to "
" ysiw] = surround with [] (no spaces)
" ysiw[ = surround with [] (spaces)
" yss[ = surround entire line with []
" ds[ = remove []
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'shawncplus/phpcomplete.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
call plug#end()

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

" Make search more bearable
set ignorecase
set incsearch
set hlsearch

" Faster fuzzy searching, please
let g:ctrlp_user_command = 'ag %s -l --no-color --hidden -g ""'

" And fast grepping, too. For example: :grep --php echo
set grepprg=ag

syntax on

" Needed for webpack --watch to work on certain platforms
set backupcopy=yes

" Show matching brackets
set showmatch

set noswapfile

" NERDTree stuff
" Show line numbers
let NERDTreeShowLineNumbers=1

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

" Python autocomplete settings
let g:deoplete#sources#jedi#show_docstring = 1

" Tern autocomplete settings
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#case_insensitive = 1

color candyman

" Makes it easier to resize windows to just the right size.
if has('mouse')
  set mouse=a
endif

map <C-n> :NERDTreeToggle<CR>

" Useful hotkeys and commands:
" zt = put current line at the top of the screen
" zz = put current line in the middle of the screen
" zb = put current line at the bottom of the screen
" % = current file, %:h = current file's directory
"
set cursorline
set splitbelow
set splitright
