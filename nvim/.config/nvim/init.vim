function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.config/nvim/plugged')
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim',
  Plug 'leafgarland/typescript-vim'
  Plug 'morhetz/gruvbox'
  Plug 'pangloss/vim-javascript'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
call plug#end()

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --smart-case --glob "!.git/*"'

let g:gruvbox_italic = 1
silent! colorscheme gruvbox
set background=dark

set showcmd
set showmode
set showmatch
set ruler
set number
set expandtab
set tabstop=2
set shiftwidth=2
set noswapfile
set clipboard=unnamedplus

nmap <c-p> :FZF<CR>
