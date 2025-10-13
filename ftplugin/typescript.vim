"
" typescript.vim
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
set foldmethod=syntax
" Depth of default folding
set foldlevel=4
"
" Code (JavaScript etc.) comment (//) current line
nnoremap <buffer> <localleader>j I//<esc>
" Code (Javascript etc.) remove comment (remove //) current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)(\/\/+)/\1/<cr>
" Insert function template
nnoremap <buffer> <localleader>fun ifunction () {<cr><cr>}<esc>ki<tab>
" For loop template
nnoremap <buffer> <localleader>loop ifor (let i=0; i<; i++) {<cr><cr>}<esc>2k_f<a
" While loop template
nnoremap <buffer> <localleader>while iwhile () {<cr><tab><cr>}<esc>2kf(a
" Do while loop template
nnoremap <buffer> <localleader>do ido {<cr><tab><cr>} while ()<esc>i
