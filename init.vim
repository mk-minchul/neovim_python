syntax on
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
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

" by default, the indent is 2 spaces. 
set shiftwidth=2
set softtabstop=2
set tabstop=2

" for html/rb files, 2 spaces
autocmd Filetype python setlocal ts=4 sw=4 sts=4 expandtab

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
call plug#end()
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1


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

nmap <leader>b <C-O>
" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)


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


