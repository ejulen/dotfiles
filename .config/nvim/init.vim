" Requirements:
" - Neovim for Python, install with pip3 install --user neovim
" - pyls (pip3 install --user pythong-language-server)
" - javascript-typescript-langserver (npm i -g
"   javascript-typescript-langserver)
" - Node
" - Ripgrep
set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Ag <whatever> to search with Ag
Plug 'junegunn/fzf.vim'
" <leader><leader>f{char} to start search
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
" cs'" = ' to "
" ysiw] = surround with [] (no spaces)
" ysiw[ = surround with [] (spaces)
" yss[ = surround entire line with []
" ds[ = remove []
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'jwalton512/vim-blade'
Plug 'leafgarland/typescript-vim'
Plug 'nightsense/office'
" <Leader>ig to toggle
Plug 'nathanaelkane/vim-indent-guides'
Plug 'digitaltoad/vim-pug'
Plug 'cespare/vim-toml'
Plug 'othree/html5.vim'
Plug 'groenewege/vim-less'
Plug 'ap/vim-css-color'
" Linting for various languages
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

syntax on

" Needed for webpack --watch to work on certain platforms
set backupcopy=yes

" Show matching brackets
set showmatch

set noswapfile

" NERDTree stuff
" Show line numbers
let NERDTreeShowLineNumbers=1

colorscheme office-light
set termguicolors
set background=light

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
set cursorcolumn
set splitbelow
set splitright

autocmd BufRead,BufNewFile *.vue setlocal filetype=html.javascript
autocmd BufRead,BufNewFile *.twig setlocal filetype=html.javascript

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_autoStart = 1
" Don't forget that a jsconfig.json or a tsconfig.json is needed
" for javascript-typescript-stdio to work
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'php': ['php', '~/.composer/vendor/felixfbecker/language-server/bin/php-language-server.php'],
    \ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>

" Ctrl+X = horizontal split, Ctrl+V = vertical split
nnoremap <silent> <c-p> :Files<CR>

let $FZF_DEFAULT_COMMAND = 'rg --no-heading --files --hidden'

let g:deoplete#enable_at_startup = 1

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always -S --hidden '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)