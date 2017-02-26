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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" BASIC
syntax enable
filetype plugin on
colorscheme solarized
"set background=dark
set cursorline
set number
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set autoindent
set completeopt+=longest,menuone

" eliminate <esc> dealy
" timeoutlen => mapping delays
" ttimeoutlen => key code delays
set timeoutlen=1000 ttimeoutlen=0

" split opening
set splitbelow
set splitright

""" PLUGINS
" vim markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2

" yapf
" python leadr = auto format or set to <LocalLeader>
autocmd FileType python nnoremap <Leader>= :0,$!yapf<CR>

" ale
" let &runtimepath.=',~/.vim/bundle/ale'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

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
