syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
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

nnoremap <leader>e $
nnoremap <leader>a 0