" ------------------------------------------------
" Loveh Nvim config
" ------------------------------------------------

" ------------------------------------------------
" Vim plug
" Skip auto install, make sure you install via Nvim instructions and not Vim.
" ------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vimwiki/vimwiki'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'srcery-colors/srcery-vim'
Plug  'altercation/vim-colors-solarized'
call plug#end()
" ------------------------------------------------
" Search (SK stuff)
" ------------------------------------------------
" Makes search better, see incsearch documentation with :help incsearch
set incsearch
set lazyredraw
set magic
set showmatch
" Makes search-and-replace show what is being replaced
set inccommand=nosplit 
if executable('rg')
  set grepprg=rg\ --vimgrep
endif
" ------------------------------------------------
" Movement
" ------------------------------------------------
set mouse=a
" Use ctrl y to copy to system clipboard
nnoremap Y "+y
" ------------------------------------------------
" Formatting 
" ------------------------------------------------
syntax on
" Enable autocompletion
" set wildmode=longest,list,full
set wildmenu
" ------------------------------------------------
" Appearance
" ------------------------------------------------
set number
set relativenumber
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
" Hide ugly grey bar to the left
highlight SignColumn ctermbg=NONE guibg=NONE
" ------------------------------------------------
" Misc
" ------------------------------------------------
" Automatically run source on this file after it has been edited to load changes
autocmd! bufwritepost .vimrc source %
set noswapfile
let mapleader = " "
let g:mapleader = " "
" ------------------------------------------------
" Plugin related settings
" ------------------------------------------------
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Settings to make sure vim wiki works
set nocompatible
filetype plugin on
" TextEdit might fail if hidden is not set.
set hidden
