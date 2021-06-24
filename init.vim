let mapleader = "\<Space>"

call plug#begin('~/.vim/plugged')

" NerdTree config plugins
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'w0rp/ale'
Plug 'preservim/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'ntpeters/vim-better-whitespace'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'rlue/vim-barbaric'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
source ~/.config/nvim/vim-configs/coc-extensions.vim

Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Multi-cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'wellle/targets.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'puremourning/vimspector'

" JSON
Plug 'elzr/vim-json'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-jade'

" TypeScript
Plug 'leafgarland/typescript-vim'

" PHP
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'jwalton512/vim-blade'

" HTML5/CSS/SASS
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-haml'

" Ruby 
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-endwise'

" Golang
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Rust
Plug 'rust-lang/rust.vim'

" Dockerfile
Plug 'ekalinin/dockerfile.vim'

call plug#end()

syntax on
filetype plugin on

" https://github.com/vim/vim/blob/master/runtime/doc/russian.txt
" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set encoding=UTF-8
set mouse=a
set number
set relativenumber
set hlsearch
set ignorecase
set signcolumn=yes
set scrolloff=3
set clipboard+=unnamedplus

" Keep undo history across sessions, by storing in file.
"silent !mkdir /tmp/.vim/backups > /dev/null 2>&1
set undodir=/tmp/.vim/backups
set undofile

""" Basics Keymaps

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with line wrapping on, this can cause the cursor to actually skip a few lines on the screen because it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down' to mean the next line on the screen
" nmap j gj
" nmap k gk
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

vmap "y "*y
nmap "y "*y
nmap "Y "*Y
nmap "p "*p
nmap "P "*P

" highlight last inserted text
nnoremap gV `[v`]

" set spell spelllang=en_us,ru_ru
set nospell

" Import configs
source ~/.config/nvim/vim-configs/nerdtree.vim
source ~/.config/nvim/vim-configs/vim-jsx.vim
source ~/.config/nvim/vim-configs/vim-javascript.vim
source ~/.config/nvim/vim-configs/coc.vim
source ~/.config/nvim/vim-configs/coc-plugins.vim
