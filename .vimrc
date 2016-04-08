" - theme -
color slate

" - keybinds -
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" - unmap arror keys -
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP 

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <up> <Nop>
vno <right> <Nop>

" - indentation -
set smartindent
set autoindent

" - tab -
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set shiftround

" - etc -
set rnu
syntax on
set title
set encoding=utf-8
set noswapfile

" - temp -

" -  autoload .vimrc once save -
autocmd! bufwritepost .vimrc source %
autocmd! InsertLeave * :set relativenumber
autocmd! InsertEnter * :set norelativenumber number
