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
" Depth of default folding
set foldlevel=3
"
" Code (JavaScript etc.) add comment (starting //) to the current line
nnoremap <buffer> <localleader>j I//<esc>
" Code (Javascript etc.) remove comment (starting //) from the current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)(\/\/+)/\1/<cr>
" Insert function template
nnoremap <buffer> <localleader>fun ifunction () {<cr><cr>}<esc>ki<tab>
" For loop template
nnoremap <buffer> <localleader>loop ifor (let i=0; i<10; i++) {<cr><cr>}<esc>ki<tab>
