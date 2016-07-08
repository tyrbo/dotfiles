function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.config/nvim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
Plug 'kchmck/vim-coffee-script'
Plug 'nanotech/jellybeans.vim'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'vim-ruby/vim-ruby'
call plug#end()

set background=dark
colorscheme jellybeans

let g:deoplete#enable_at_startup = 1

set showcmd
set showmode
set showmatch
set ruler
set number
set expandtab
set tabstop=2
set shiftwidth=2
set esckeys
set nofoldenable
set clipboard+=unnamedplus
set wildmenu
set wildmode=list:longest,full
set splitright
set splitbelow
set noswapfile
