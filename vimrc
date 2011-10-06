set nocompatible
runtime bundle/pathogen/autoload/pathogen.vim

call pathogen#infect()


""""""""""""""""""""""""""""""
" General Options
""""""""""""""""""""""""""""""
set incsearch				"do incremental searching

set hlsearch				"hightlight search matches

set backspace=indent,eol,start		"allow backspacing over everything in insert mode

set ruler				"show cursor position at all times

set history=50				"keep 50 lines of command line history

set showcmd				"show incomplete commands

set autoread				"reload file when changes have been made outside VIM, but not in VIM

set hidden				"allow switching of buffers when unsaved changes exist

set background=dark

let g:solarized_termcolors=256

colorscheme solarized

set guifont=Consolas
""""""""""""""""""""""""""""
" Normal Mode Remaps
""""""""""""""""""""""""""""

"Tab to next buffer
nmap <Tab> :bnext<CR>

"Shift-Tab to previous buffer
nmap <S-Tab> :bprev<CR>

"reload the vimrc file, vimrc is a variable defined in parent vimrc
nmap <leader>l :source $MYVIMRC<CR>

"open the vimrc file, vimrc is a variable defined in the parent vimrc
nmap <leader>e :e $VIMRC<CR>

nmap j gj

nmap k gk

""""""""""""""""""""""""""""
" AutoCommands
""""""""""""""""""""""""""""
if has("autocmd")			"check for autocommand option

	autocmd BufEnter * cd %:p:h	"change current directory to directory of the current file

endif

""""""""""""""""""""""""""""
" File Type Settings
""""""""""""""""""""""""""""
syntax on
filetype plugin on
filetype plugin indent on

