" Vim configuration by Daniel Yang
" Version 1.0

" Vundle
" set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
" Plugin 'valloric/youcompleteme'
Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" etc
syntax on
filetype plugin on
set encoding=utf-8
set t_Co=256
set autoindent

" airline theme
set background=dark
let g:airline_power_fonts=1
let g:airline_theme='solarized'

" Binding leader key
let mapleader="\<space>"

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Keybinds - fast move line up & down
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

" Line number 
set number
set nowrap  "don't automatically wrap on load

" Enable mouse
set mouse=a

" No swap file
set noswapfile

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
