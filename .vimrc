" VIM CONFIGURATION
" DANIEL YANG

" VUNDLE
" set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'valloric/youcompleteme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'klen/python-mode'
Plugin 'raimondi/delimitmate'
Plugin 'terryma/vim-multiple-cursors'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" etc
syntax enable
colorscheme solarized
set background=dark
set encoding=utf-8
filetype plugin on
set autoindent
set cursorline
set showmatch
let python_highlight_all=1

" eliminate <esc> dealy
" timeoutlen => mapping delays
" ttimeoutlen => key code delays
set timeoutlen=1000 ttimeoutlen=0

""" ETC
" split opening
set splitbelow
set splitright

" tab control
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set completeopt+=longest,menuone

" trailing white space
match ErrorMsg '\s\+$'

""" PLUGINS
" vim-airline
set laststatus=2
set background=dark
let g:airline_power_fonts=1
let g:airline_theme='solarized'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" python-mode
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_doc_bind = 'K'

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

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
" Line number
set number

" Enable mouse
set mouse=a

" No swap file
set nobackup
set nowb
set noswapfile

" Binding leader key
let mapleader="\<space>"

" Remap <Esc>
inoremap jk <esc>

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
