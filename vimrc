set nocompatible
filetype off
syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 
set nu
set relativenumber
set nowrap
set smartcase "smart case sensitivity
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set cursorline

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'powerline/powerline'
call plug#end()

colorscheme gruvbox
set background=dark
" key bindings
let mapleader = " "
imap jj <Esc>
inoremap <C-g> <Esc>
nmap <leader>gd <Plug>(coc-definitions)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>h :wincmd h<CR> 
nmap <leader>j :wincmd j<CR> 
nmap <leader>k :wincmd k<CR> 
nmap <leader>l :wincmd l<CR> 
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nmap <leader>w :wincmd w<CR>
map <C-K> :bprev<CR>
map <C-J> :bnext<CR>
nnoremap <C-p> :GFiles<CR>
" make . work on visual selected lines
vnoremap . :normal.<CR> 
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
