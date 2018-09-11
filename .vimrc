set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/vim-easy-align'

" HTML/ JS / JSX 
" Plugin 'pangloss/vim-javascript'
" Plugin 'mxw/vim-jsx'
" Plugin 'alvan/vim-closetag'

Plugin 'sjl/badwolf'
Plugin 'dylanaraps/wal.vim'

" Plugin 'valloric/youcompleteme'

call vundle#end()
filetype plugin indent on

autocmd! bufwritepost .vimrc source %


set exrc
syntax on

set t_Co=256
set t_ut=
"set background=dark

set t_vb=

" colorscheme badwolf
colorscheme wal

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

autocmd FileType lua nmap <leader>r :w<cr>:!love . %<cr>

" Disable search highlights on enter
nnoremap <Cr> :nohlsearch<Cr>

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
set showtabline=1
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

"
" **** AIRLINE ****
"
" Don't show seperators
" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Use powerline fonts
let g:airline_powerline_fonts = 1

" Something else
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'
