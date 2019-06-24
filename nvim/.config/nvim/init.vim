let g:ale_completion_enabled = 1

call plug#begin('~/.config/nvim/plugged')
Plug 'cespare/vim-toml'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'LnL7/vim-nix'
Plug 'mhartington/oceanic-next'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install() }}
Plug 'rhysd/vim-crystal'
Plug 'rust-lang/rust.vim'
Plug 'sheerun/vim-polyglot'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-surround'
" Plug 'w0rp/ale'
call plug#end()

let g:coc_global_extensions = ['coc-pairs', 'coc-rls', 'coc-solargraph', 'coc-tsserver']

" Deoplete
" let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" FZF
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --smart-case --glob "!.git/*"' 

" ALE
let g:ale_c_parse_compile_commands = 1
let g:ale_cpp_gcc_options = '-std=c++1z -Wall'
let g:ale_elixir_elixir_ls_release = '/home/tyrbo/bin/elixir-ls'
let g:ale_linters = {'rust': ['cargo', 'rls', 'rustfmt']}
let g:ale_rust_rls_toolchain = 'stable'

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
