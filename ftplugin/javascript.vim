"
" javascript.vim 
"
" For JavaScript and TypeScript files.
"

" Turn syntax highlighting on.
syntax on

set tabstop=2
set softtabstop=2
set shiftwidth=2

" Expand tabstops to spaces.
set expandtab

" Code folding
"set foldmethod=syntax
set foldmethod=indent
" Depth of default folding
set foldlevel=6

"colorscheme murphy

" Code (JavaScript etc.) add comment (starting //) to the current line
nnoremap <buffer> <localleader>j I//<esc>
" Code (Javascript etc.) remove comment (starting //) from the current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)(\/\/+)\s*/\1/<cr>:silent noh<cr>
" Function template
nnoremap <buffer> <localleader>fun ifunction () {<cr><tab><cr>}<esc>2k_f(i
" If Template
nnoremap <buffer> <localleader>if iif () {<cr><tab><cr>}<esc>2k_f(a
" For loop template
nnoremap <buffer> <localleader>loop ifor (let i=0; i<10; i++) {<cr><tab><cr>}<esc>ki
" While loop template
nnoremap <buffer> <localleader>while iwhile () {<cr><tab><cr>}<esc>2k_f(a
" Do while loop template
nnoremap <buffer> <localleader>do ido {<cr><tab><cr>} while ()<esc>i
" Console.log template
nnoremap <buffer> <localleader>log iconsole.log()<esc>i
" Comment block
nnoremap <buffer> <localleader>comment i/**<esc>o *<esc>o*/<esc>kA 

" set formatoptions in .vimrc is (seemingly) being overriden by a plugin
" so the following autocmd takes out the (r and o flags) again for the
" JavaScript (and TypeScript) file type:
"autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions=cql
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=r
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=o
