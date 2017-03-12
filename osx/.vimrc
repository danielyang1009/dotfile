" VIM CONFIGURATION
" DANIEL YANG

" VUNDLE
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'
Plugin 'python-mode/python-mode'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" BASIC
syntax enable
filetype plugin on
colorscheme solarized
set background=dark
set cursorline
set number

" eliminate <esc> dealy
" timeoutlen => mapping delays
" ttimeoutlen => key code delays
set timeoutlen=1000 ttimeoutlen=0

" split opening
set splitbelow
set splitright

""" PLUGINS
" ale
" let &runtimepath.=',~/.vim/bundle/ale'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" python-mode
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_doc_bind = 'K'

" NERDTree
map <f2> :NERDTreeToggle<CR>
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

" Enable mouse
set mouse=a

" No swap file
set nobackup
set nowb
set noswapfile

" Binding leader key
let mapleader="\<space>"

" Remap <Esc>
"inoremap jk <esc>

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
