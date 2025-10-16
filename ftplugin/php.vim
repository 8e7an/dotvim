"
" php.vim
"

" Syntax highlighting on
syntax on

" Tabstop length (override default of 2).
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Expand tabstops to spaces.
set expandtab

" set formatoptions in .vimrc is (seemingly) being overriden by a plugin
" so the following autocmd takes out the (r and o flags) again for the PHP
" file type:
"autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions=cql
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=r
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=o
