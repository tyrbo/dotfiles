call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set backspace=2
set autoindent
set ts=2
set shiftwidth=2
set expandtab
set nocompatible
set showmatch
set ignorecase
set hlsearch
set smartcase
set number
set incsearch
set mouse=a
set ttimeoutlen=100
set visualbell
set ruler
set scrolloff=2
set laststatus=2
set nofoldenable
set clipboard=unnamed
set wildmenu
set wildmode=list:longest,full
set splitright
set splitbelow
set noswapfile

set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

set background=dark
let base16colorspace=256
set t_Co=256
colorscheme base16-railscasts

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

let mapleader = ","

:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
