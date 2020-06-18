syntax on
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set mouse=a
set scrolloff=3 " keep three lines between the cursor and the edge of the screen


call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdtree'
call plug#end()
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

let g:python3_host_prog = expand("/opt/conda/bin/python")
let g:node_host_prog = expand("/usr/bin/node")


" make tab during autocomplete behave like vs-code or pycharm
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" vim autocomplete behavior during command line is weird. so change
cnoremap <expr> <up>   pumvisible() ? "<C-p>" : "\<up>"
cnoremap <expr> <down> pumvisible() ? "<C-n>" : "\<down>"
cnoremap <expr> <right> pumvisible() ? "\<C-y>" : "<right>"
cnoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "<cr>"


let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" going to end or beginning of the line easier
nnoremap <leader>e $
nnoremap <leader>a 0

" nerdtree shortcut
nnoremap <leader>n :NERDTreeToggle<CR>
autocmd BufWinEnter * NERDTreeMirror " nerdtree open in when creating new tab
autocmd vimenter * NERDTree  " nerdtree open always
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

nnoremap <leader>q :wincmd q<CR>

