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

nmap <leader>s source $MYVIMRC	"reload the vimrc file

""""""""""""""""""""""""""""
" File Type Settings
""""""""""""""""""""""""""""
filetype plugin indent on

