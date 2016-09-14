function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.config/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
Plug 'kchmck/vim-coffee-script'
Plug 'mhartington/oceanic-next'
Plug 'mxw/vim-jsx'
Plug 'neomake/neomake'
Plug 'pangloss/vim-javascript'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'vim-ruby/vim-ruby'
call plug#end()

let g:deoplete#enable_at_startup = 1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let g:neomake_javascript_enabled_makers = ['eslint']

let $FZF_DEFAULT_COMMAND='ag -g ""'

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

set termguicolors
silent! colorscheme OceanicNext
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

augroup omnifuncs
  autocmd!
  autocmd FileType rb setlocal omnifunc=rubycomplete#Complete
augroup end

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif
