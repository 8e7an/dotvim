"
" python.vim
"

" Turn syntax highlighting on.
syntax on

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

" Expand tabstops to spaces.
setlocal expandtab

" Folding
" For Python the following fold method is most suitable:
setlocal foldmethod=indent

" Depth of default folding
setlocal foldlevel=4

"setlocal the (custom) leader commands.
" Insert comment (--) current line.
nnoremap <leader>j I#<esc>
" Remove comment (remove --) current line.
nnoremap <leader>k :.s/\v^(\s*)(#+)/\1/<cr>:silent noh<cr>

" TODO: block-level quoting and unquoting in Python

" Insert function template
nnoremap <buffer> <localleader>def ifun ()<cr><tab><esc>k_f(i
" If Template
nnoremap <buffer> <localleader>if iif <cr><tab><esc>k_fdhi
" For loop template - one type of Python for loop
nnoremap <buffer> <localleader>ifor i in range(10):<cr><tab><esc>ki
" While loop template
nnoremap <buffer> <localleader>while iwhile :<cr><tab><cr>end<esc>k_f:i
" Do while loop template - Python doesn't have do-while loops as such but can
" work by testing the condition and break in a while True loop
nnoremap <buffer> <localleader>do iwhile True:<cr><cr><tab>if not :<cr><tab>break<cr><esc>2k_f:i

" See comment in lua.vim for info about the following:
"autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions=cql
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=r
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=o
