"
" vim.vim
"

" Syntax highlighting on
syntax on

" Code (JavaScript etc.) add comment (starting ") to the current line
nnoremap <buffer> <localleader>j I"<esc>
" Code (Javascript etc.) remove comment (starting ") from the current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)("+)\s*/\1/<cr>:silent noh<cr>

"colorscheme murphy

" See comment in lua.vim for info about the following:
"autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions=cql
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=r
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=o
