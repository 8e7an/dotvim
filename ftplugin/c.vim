" 
" .vim
" 

" Turn syntax highlighting on.
syntax on

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

" Expand tabstops to spaces.
setlocal expandtab

" Folding
setlocal foldmethod=syntax
"setlocal foldmethod=indent

" Depth of default folding
setlocal foldlevel=5

" TODO: block-level quoting and unquoting in C

" Code (JavaScript etc.) add comment (starting //) to the current line
nnoremap <buffer> <localleader>j I//<esc>
" Code (Javascript etc.) remove comment (starting //) from the current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)(\/\/+)\s*/\1/<cr>:silent noh<cr>
" Function template
nnoremap <buffer> <localleader>fun ifunction () {<cr><tab><cr>}<esc>2k_f(i
" If Template
nnoremap <buffer> <localleader>if iif () {<cr><tab><cr>}<esc>2k_f(a
" For loop template
nnoremap <buffer> <localleader>loop ifor (int i=0; i<10; i++) {<cr><tab><cr>}<esc>ki
" While loop template
nnoremap <buffer> <localleader>while iwhile () {<cr><tab><cr>}<esc>2k_f(a
" Do while loop template
nnoremap <buffer> <localleader>do ido {<cr><tab><cr>} while ()<esc>i
" printf template
nnoremap <buffer> <localleader>printf printf("%d\n", );<cr><esc>k_f)i
" Comment block
nnoremap <buffer> <localleader>comment i/**<esc>o *<esc>o*/<esc>kA 
