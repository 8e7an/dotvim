"
" javascript.vim
"
"

" syntax on

" Tabstop length (override default of 2).
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Expand tabstops to spaces.
set expandtab

" Code folding
set foldmethod=indent
" Depth of deafult folding
set foldlevel=2
"
" Code (JavaScript etc.) comment (//) current line
nnoremap <buffer> <localleader>j I//<esc>
" Code (Javascript etc.) remove comment (remove //) current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)(\/\/+)/\1/<cr>
" Insert function text as a template
nnoremap <buffer> <localleader>f ifunction () {<cr><cr>}<esc>ki<tab>
