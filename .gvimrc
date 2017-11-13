" MACVIM GVIM SETTING
" 2017/11
" DANIEL YANG

" Vundle Setting
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'w0rp/ale'
Plugin 'raimondi/delimitmate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

""" GENERAL

syntax on
set background=dark
colorscheme solarized
set guifont=Source\ Code\ Pro:h16

" eliminate <esc> dealy
" timeoutlen => mapping delays
" ttimeoutlen => key code delays
set timeoutlen=1000 ttimeoutlen=0

" split opening
set splitbelow
set splitright

""" PLUGINS
"nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

" airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

""" KEYBINDS
" fast move line up & down
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

" swich pane
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

""" BASIC MODIFICATION

" Enable mouse
set mouse=a

" No swap file
set nobackup
set nowb
set noswapfile

" Binding leader key
"nnoremap <SPACE> <Nop>
let mapleader="\<space>"

" Remap <Esc>
"inoremap jk <esc>

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
