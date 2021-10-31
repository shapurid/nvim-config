" https://github.com/preservim/nerdtree

let g:NERDSpaceDelims = 1
let g:nerdtree_tabs_open_on_console_startup=1
let g:webdevicons_enable_nerdtree = 1
let NERDTreeShowHidden=1

autocmd VimEnter * NERDTree
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
nnoremap <C-m> :NERDTreeFind<CR>

let NERDTreeIgnore = ['\.pyc$', '\.retry$']
