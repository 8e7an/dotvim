"
" sh.vim
" For some reason this doesn't applie for shell (bash etc.) shell scripts
" (with the .sh extension). Set up here regardless.
"

" Syntax highlighting on
syntax on

" Display with the phython syntax highlighting 
setlocal ft=python

" Code (JavaScript etc.) add comment (starting #) to the current line
nnoremap <buffer> <localleader>j I#<esc>
" Code (Javascript etc.) remove comment (starting #) from the current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)(#+)\s*/\1/<cr>:silent noh<cr>

