" 
" c.vim
" 

" Turn syntax highlighting on.
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4

" Expand tabstops to spaces.
set expandtab

" Code folding
set foldmethod=syntax
" Depth of default folding
set foldlevel=4

nnoremap <buffer> <localleader>j I//<esc>
nnoremap <buffer> <localleader>k :.s/\v^(\s*)(\/\/+)\s*/\1/<cr>:silent noh<cr>
