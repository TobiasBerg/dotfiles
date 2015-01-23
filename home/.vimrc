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
set shiftwidth=4
set expandtab
"set autoindent
"set smartindent
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4

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

"NERDTree setup
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

