" 
" lisp.vim
" 

" Turn syntax highlighting on.
syntax on

"setlocal tabstop=4
"setlocal softtabstop=4
"setlocal shiftwidth=4

" Expand tabstops to spaces.
setlocal expandtab

" Folding
setlocal foldmethod=syntax
"setlocal foldmethod=indent

" Depth of default folding
setlocal foldlevel=6

" TODO: block-level quoting and unquoting in lisp 

" Code (JavaScript etc.) add comment (starting //) to the current line
nnoremap <buffer> <localleader>j I;<esc>
" Code (Javascript etc.) remove comment (starting //) from the current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)(;+)\s*/\1/<cr>:silent noh<cr>
" Template a lisp format to to the terminal call:
nnoremap <buffer> <localleader>ft i(format t " ~a ~%" )<esc>h
" Template a lisp variable declaration:
nnoremap <buffer> <localleader>dp i(defparameter ** 0)<esc>4h
" Template a lisp function declaration:
nnoremap <buffer> <localleader>df i(defun ( ))<esc>2h
