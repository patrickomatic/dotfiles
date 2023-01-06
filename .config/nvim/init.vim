set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

match errorMsg /\s\+$/

call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()
