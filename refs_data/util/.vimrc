syntax on
set tabstop=2
set shiftwidth=0
set shiftround
set expandtab
set autoindent
set cindent
colorscheme desert
set relativenumber
 
let mapleader="\<Space>"
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

nnoremap <leader>j :bp<CR>
nnoremap <leader>k :bn<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <leader>s /\. [A-Z]<CR>

" Searching stuff
set incsearch

" Adding braces around a character
nnoremap <leader>b a}<Esc>hi{<Esc>

" Working with bibtex
nnoremap <leader>ZBL :s/  Zbl = {\(.*\)}/  note = {\\href{http:\/\/zbmath.org\/?q=an:\1}{Zbl \1}.}/<CR>
nnoremap <leader>MR :s/  MR = {MR0*\([1-9][0-9]*\)\(\((.*)\)*\)}/  note = {\\href{http:\/\/www.ams.org\/mathscinet-getitem?mr=\1}{MR\1}\2.}/<CR>
nnoremap <leader>PMR :s/ (/(/e<CR>:s/#/\\#/e<CR>
nnoremap <leader>FF kJd?}<CR>ld/{<CR>xV{:s/    /  /g<CR>
nmap <leader>DO <leader>PMR<leader>MRj<leader>ZBL<leader>FF
nnoremap <leader>NM :s/{\(.*\) {\(.*\)}}/{\2, \1}/<CR>
nnoremap <leader>PB hi}<Esc>lls<CR>    address = {<Esc>
