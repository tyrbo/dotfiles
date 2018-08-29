function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.config/nvim/plugged')
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'editorconfig/editorconfig-vim'
  Plug 'elixir-editors/vim-elixir'
  Plug 'fatih/vim-go'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim',
  Plug 'leafgarland/typescript-vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'morhetz/gruvbox'
  Plug 'mxw/vim-jsx'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'pangloss/vim-javascript'
  Plug 'rust-lang/rust.vim'
  Plug 'shougo/deoplete.nvim', { 'do': function('DoRemote') }
  Plug 'slashmili/alchemist.vim'
  Plug 'stephpy/vim-yaml'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-surround'
  Plug 'vim-ruby/vim-ruby'
  Plug 'zchee/deoplete-clang'
call plug#end()

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --smart-case --glob "!.git/*"'

let g:gruvbox_italic = 1
silent! colorscheme gruvbox
set background=dark

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

let g:deoplete#enable_at_startup = 1

set clipboard=unnamedplus
set expandtab
set tabstop=2
set shiftwidth=2
set noswapfile
set number
set ruler
set showcmd
set showmatch
set showmode

nmap <c-p> :FZF<CR>
