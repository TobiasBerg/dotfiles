syntax on
filetype plugin indent on

" Set leader to ,
let mapleader = ","

set rtp+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'squarefrog/tomorrow-night.vim'

call neobundle#end()

filetype plugin indent on

" Some keybindings
nnoremap <leader>n :NERDTreeToggle<cr>

" Color theme
colorscheme Tomorrow-Night

" Show line numbers
set number

" Tabsize
set tabstop=4
set shiftwidth=4
set expandtab

" Move between splits
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Don’t show the intro message when starting Vim
set shortmess=atI

" Enable mouse in all modes
set mouse=a

" Preventing swap files from being created.
set noswapfile

" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif

" NERDTree setup
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

" neocomplcache setup
let g:neocomplcache_enable_at_startup = 1

" Close vim if NERDTree is the only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
