let mapleader = ","

nnoremap <leader>a :tabp<CR>
nnoremap <leader>f :tabn<CR>
nnoremap <leader>d :tabnew<CR>:GFiles<CR>
nnoremap <leader>s :GFiles<CR>

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

" folding
set foldmethod=syntax
set foldcolumn=1
let javaScript_fold=1
set foldlevelstart=99 " start with all folds opened

set noeb vb t_vb=

call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
call plug#end()

let g:ale_fixers = {'typescript': ['prettier'], 'typescript.tsx': ['prettier'], 'typescriptreact': ['prettier']}
let g:ale_fix_on_save = 1
let g:ale_floating_preview = 1
let g:ale_set_balloons=1
let g:ale_cursor_detail=1

let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,md,styl,jade,html,config,py,cpp,c,go,hs,ts,tsx,rb,conf,yml}"
  \ -g "!{.git,node_modules,lib,coverage,ios,android}/*"
  \ -g "!**/{generated,__generated__,__fixtures__,node_modules,public}/**" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
command! -bang -nargs=* FF call fzf#vim#grep(g:rg_command .shellescape(expand('<cword>')), 1, <bang>0)

let g:terraform_fmt_on_save=1

colorscheme everforest
