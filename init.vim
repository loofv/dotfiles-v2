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
Plug 'preservim/nerdtree'
Plug 'ayu-theme/ayu-vim'
" Plug 'srcery-colors/srcery-vim'
" Plug  'altercation/vim-colors-solarized'
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
" Use shift y to copy to system clipboard
nnoremap Y "+y
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright
nnoremap <leader><Tab> :b#<CR>
" ------------------------------------------------
" Formatting and appearance
" ------------------------------------------------
syntax on
" Enable autocompletion
set wildmenu
set wildmode=longest,list,full
set number
set relativenumber
set ignorecase
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
set termguicolors     " enable true colors support
" Theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu
" Hide ugly grey bar to the left
highlight SignColumn ctermbg=NONE guibg=NONE
" Enable transparent background in vim even when using themes
hi Normal guibg=NONE ctermbg=NONE
" Tabs
set expandtab
set shiftwidth=4
set tabstop=4
" Make tabs visible
set list
set listchars=tab:>-
" ------------------------------------------------
" Key bindings
" ------------------------------------------------
let mapleader = " "
let g:mapleader = " "
" Search files in all subdirectories with FZF
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>nt :NERDTree<CR>
" View current buffers
nnoremap <leader>bb :Buffers<CR>
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<BS>"
" ------------------------------------------------
" Misc
" ------------------------------------------------
set noswapfile
" Be able to yank to regular clipboard
set clipboard=unnamedplus
" ------------------------------------------------
" Plugin related settings
" ------------------------------------------------
"  Let nerdtree see hidden files, dotfiles etc.
let NERDTreeShowHidden=1
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Settings to make sure vim wiki works
set nocompatible
filetype plugin on
" TextEdit might fail if hidden is not set.
set hidden
" Coc
hi CocUnderline cterm=underline gui=underline
let g:coc_global_extensions=[ 'coc-tsserver', 'coc-git', 'coc-tslint', 'coc-json', 'coc-css' ]
" ------------------------------------------------
" Auto commands
" ------------------------------------------------
augroup autocommands
	autocmd!
	" Restore last cursor position and marks on open
	au BufReadPost *
				\ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
				\ |   exe "normal! g`\""
				\ | endif
	" Automatically deletes all trailing whitespace when saving.
	autocmd BufWritePre * %s/\s\+$//e
	" Automatically run source on this file after it has been edited to load changes
	autocmd! bufwritepost .config/nvim/init.vim source %
augroup END

