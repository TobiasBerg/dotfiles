" Pathogen
call pathogen#infect()

syntax on
filetype plugin indent on

" Set leader to ,
let mapleader = ","

" Some keybindings
nnoremap <leader>n :NERDTreeToggle<cr>

" Color theme
color Tomorrow-Night

" Show line numbers
set number

" Tabsize
set tabstop=4

" Indent at the same level of the previous line
set autoindent                  

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Don’t show the intro message when starting Vim
set shortmess=atI

" Enable mouse in all modes
set mouse=a

