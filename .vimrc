" Vim configuration by Daniel Yang
" Version 1.0

" Syntax
set encoding=utf-8
filetype off
filetype indent on
filetype plugin indent on
syntax on
set autoindent
set foldmethod=indent  "folding based on indentation
let python_highlight_all=1

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Keybinds - fast move line up & down
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

" Binding leader key
" let mapleader=","

" Line number 
set number
set nowrap  "don't automatically wrap on load

" Enable mouse
set mouse=a

" No swap file
set noswapfile

"=====================================================================
"vimrc file for following the coding standards specified in PEP 7 & 8.
"====================================================================

" Number of spaces that a pre-existing tab is equal to.
" For the amount of space used for a new tab use shiftwidth.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=8

" What to use for an indent.
" This will affect Ctrl-T and 'autoindent'.
" Python: 4 spaces
" C: tabs (pre-existing files) or 4 spaces (new files)
au BufRead,BufNewFile *.py,*.pyw set expandtab  "convert tabs to white space
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4  "makes the Tab key indent by four sapces
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4  "sets width for autoindents

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
" Python: 79 
" C: 79
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79

" Turn off settings in 'formatoptions' relating to comment formatting.
" - c : do not automatically insert the comment leader when wrapping based on
"    'textwidth'
" - o : do not insert the comment leader when using 'o' or 'O' from command mode
" - r : do not insert the comment leader when hitting <Enter> in insert mode
" Python: not needed
" C: prevents insertion of '*' at the beginning of every line in a comment
au BufRead,BufNewFile *.c,*.h set formatoptions-=c formatoptions-=o formatoptions-=r

" Use UNIX (\n) line endings.
" Only used for new files so as to not force existing files to change their
" line endings.
" Python: yes
" C: yes
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
