function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.config/nvim/plugged')
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'elmcast/elm-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
Plug 'kchmck/vim-coffee-script'
Plug 'morhetz/gruvbox'
Plug 'mxw/vim-jsx'
Plug 'neomake/neomake'
Plug 'othree/yajs.vim'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'vim-ruby/vim-ruby'
call plug#end()

let g:deoplete#enable_at_startup = 1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let g:neomake_javascript_enabled_makers = ['eslint']
let g:vimfiler_as_default_explorer = 1
" let g:jsx_ext_required = 0

let $FZF_DEFAULT_COMMAND='ag -g ""'

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

set termguicolors
let g:gruvbox_italic=1
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
set esckeys
set nofoldenable
set clipboard+=unnamedplus
set wildmenu
set wildmode=list:longest,full
set splitright
set splitbelow
set noswapfile
set listchars=eol:$

nmap <c-p> :FZF<CR>

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
\]

set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
