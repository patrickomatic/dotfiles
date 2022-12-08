let mapleader = ","
" tab left
nnoremap <leader>a :tabp<CR>
" tab right
nnoremap <leader>f :tabn<CR>
" open fzf in a new tab
nnoremap <leader>d :tabnew<CR>:GFiles<CR>
" open fzf in the current window
nnoremap <leader>s :GFiles<CR>
" ripgrep search
nnoremap <leader>r :Rg<SPACE>
" go to the next error
nnoremap <leader>n :ALENext<CR>
" go to the previous error
nnoremap <leader>p :ALEPrevious<CR>
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

" folding (that works with typescript)
set foldmethod=syntax
set foldcolumn=1
let javaScript_fold=1
set foldlevelstart=99 " start with all folds opened

" XXX why did I do this
set noeb vb t_vb=

call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'jremmen/vim-ripgrep'
call plug#end()

" Typescript config
let g:ale_fixers = {'typescript': ['prettier'], 'typescript.tsx': ['prettier'], 'typescriptreact': ['prettier']}
let g:ale_fix_on_save = 1
let g:ale_floating_preview = 1
let g:ale_set_balloons=1
let g:ale_cursor_detail=1

" ripgrep
let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "never"
  \ -g "*.{js,md,styl,jade,config,py,cpp,c,go,hs,ts,tsx,rb,conf,yml}"
  \ -g "!{.git,node_modules,lib,coverage,ios,android}/*"
  \ -g "!**/{generated,__generated__,__fixtures__,node_modules,public}/**" '

"command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
"command! -bang -nargs=* FF call fzf#vim#grep(g:rg_command .shellescape(expand('<cword>')), 1, <bang>0)

" Terraform
let g:terraform_fmt_on_save=1

colorscheme everforest
