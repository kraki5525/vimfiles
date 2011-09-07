set nocompatible
runtime bundle/pathogen/autoload/pathogen.vim

call pathogen#infect()


""""""""""""""""""""""""""""""
" General Options
""""""""""""""""""""""""""""""
set incsearch			"do incremental searching
set hlsearch			"hightlight search matches

set backspace=indent,eol,start	"allow backspacing over everything in insert mode

set ruler			"show cursor position at all times

set history=50			"keep 50 lines of command line history

set showcmd			"show incomplete commands

"reload the vimrc file, vimrc is a variable defined in parent vimrc
nmap <leader>l :source $MYVIMRC<CR>

"open the vimrc file, vimrc is a variable defined in the parent vimrc
nmap <leader>e :e $VIMRC<CR>

""""""""""""""""""""""""""""
" File Type Settings
""""""""""""""""""""""""""""
syntax on
filetype plugin indent on

