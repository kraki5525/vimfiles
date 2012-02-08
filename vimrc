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

set number

set background=dark

let g:solarized_termcolors=256

colorscheme solarized

set guifont=DejaVu_Sans_Mono:h10:cANSI

set laststatus=2

set encoding=utf-8

""""""""""""""""""""""""""""
" Buffer Settings
""""""""""""""""""""""""""""
set hidden				"Allows switching of buffers, even if they have been unsaved edits

""""""""""""""""""""""""""""
" Normal Mode Remaps
""""""""""""""""""""""""""""

"Tab to next buffer
nnoremap <Tab> :bnext<CR>

"Shift-Tab to previous buffer
nnoremap <S-Tab> :bprev<CR>

"reload the vimrc file, vimrc is a variable defined in parent vimrc
nnoremap <leader>l :source $MYVIMRC<CR>

"open the vimrc file, vimrc is a variable defined in the parent vimrc
nnoremap <leader>e :e $VIMRC<CR>

nnoremap j gj

nnoremap k gk

nnoremap <silent> <ESC> :noh<CR>

""""""""""""""""""""""""""""
" Insert Mode Remaps
""""""""""""""""""""""""""""

inoremap jk <ESC>

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> "  strpart(getline('.'), col('.') - 1, 1) == '"' ? "\<Right>" : "\"\"\<Left>"

""""""""""""""""""""""""""""
" Visual Mode Remaps
""""""""""""""""""""""""""""
vnoremap jk <ESC>

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


let g:Powerline_symbols='unicode'
