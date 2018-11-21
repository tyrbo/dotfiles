call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhartington/oceanic-next'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'slashmili/alchemist.vim'
Plug 'w0rp/ale'
call plug#end()

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" ALE
let g:ale_elixir_elixir_ls_release = '/home/user/elixir-ls'

" Color scheme
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme OceanicNext

" Settings
set clipboard=unnamedplus
set cursorcolumn
set cursorline
set expandtab
set hlsearch
set ignorecase
set smartcase
set incsearch
set number
set shiftwidth=2
set softtabstop=2
set tabstop=2
set title

nmap <c-p> :FZF<CR>
