" VIM CONFIGURATION
" DANIEL YANG

" Vundle
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

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" etc
let python_highlight_all=1
syntax enable
colorscheme solarized
set background=dark
filetype plugin on
set encoding=utf-8
set autoindent
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" airline theme
set laststatus=2
set background=dark
let g:airline_power_fonts=1
let g:airline_theme='solarized'

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

"let g:airline_section_b = '%{getcwd()}'
"let g:airline_section_c = '%t'

" Binding leader key
let mapleader="\<space>"

" Remap <Esc>
inoremap jk <esc>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

" Keybinds - fast move line up & down
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

" trailing white space
match ErrorMsg '\s\+$'

" Tab control
set noexpandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set completeopt+=longest

" code folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Line number
set number
set nowrap  "don't automatically wrap on load

" Enable mouse
set mouse=a

" No swap file
set noswapfile

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
