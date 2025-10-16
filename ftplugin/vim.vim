"
" vim.vim
"

" Syntax highlighting on
syntax on

" set formatoptions in .vimrc is (seemingly) being overriden by a plugin
" so the following autocmd takes out the (r and o flags) again for the Vim
" file type:
"autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions=cql
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=r
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=o
