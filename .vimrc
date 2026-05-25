let mapleader = " "

" tab left
nnoremap <leader>a :tabp<CR>
" tab right
nnoremap <leader>f :tabn<CR>
" ripgrep search
nnoremap <leader>r :Rg<SPACE>
" go to the next error
nnoremap <leader>n :CocNext<CR>
" go to the previous error
nnoremap <leader>p :CocPrev<CR>
" run make
nnoremap <leader>b :!make<CR>
" insert lambda character
nnoremap <leader>l aλ

set nocompatible
set autoindent
set backup
set smartindent
set showmatch
set title
set expandtab
set tabstop=2
set shiftwidth=2
set nobackup
set nowritebackup

set termguicolors
set background=dark

" folding (that works with typescript)
set foldmethod=syntax
set foldcolumn=1
let javaScript_fold=1
set foldlevelstart=99 " start with all folds opened

" hush the terminal bell
set noeb vb t_vb=

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'jremmen/vim-ripgrep'
" Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()

" ripgrep
let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "never"
  \ -g "*.{js,md,styl,jade,config,py,cpp,c,go,hs,ts,tsx,rb,conf,yml}"
  \ -g "!{.git,node_modules,lib,coverage,ios,android}/*"
  \ -g "!**/{generated,__generated__,__fixtures__,node_modules,public}/**" '


" Terraform
let g:terraform_fmt_on_save=1

colorscheme everforest
