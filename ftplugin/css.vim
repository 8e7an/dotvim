"
" css.vim
"
"

" syntax on

" Tabstop length (override default of 2).
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Expand tabstops to spaces.
"set expandtab

set foldmethod=syntax

" Code (CSS) comment (/* ... */) current line
nnoremap <buffer> <localleader>j I/* <esc>A */<esc>
" Code (CSS) remove comment (remove /* ... */) current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)(\/\*\s*)/\1/<cr>:.s/\v\s*\*\/$//<cr>

