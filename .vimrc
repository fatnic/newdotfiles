set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'
Plugin 'easymotion/vim-easymotion'

Plugin 'sjl/badwolf'

call vundle#end()
filetype plugin indent on

autocmd! bufwritepost .vimrc source %

set exrc
syntax on

set t_Co=256
set t_ut=
"set background=dark

colorscheme badwolf

set number
set numberwidth=3

set laststatus=2
set encoding=utf-8

set autochdir

set nowrap
set scrolloff=2

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowb
set noswapfile

set viminfo=

" Keep selection after indenting
vnoremap < <gv
vnoremap > >gv

" Change the leader to ,
let mapleader=","

" no need to shift
nnoremap ; :

" Disable search highlights on enter
nnoremap <Cr> :nohlsearch<Cr>

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
map <C-l> :bnext<CR>
"" Move to the previous buffer
map <C-h> :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>
