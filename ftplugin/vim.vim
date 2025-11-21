"
" vim.vim
"

" Syntax highlighting on
syntax on

" Code (JavaScript etc.) add comment (starting ") to the current line
nnoremap <buffer> <localleader>j I"<esc>
" Code (Javascript etc.) remove comment (starting ") from the current line
nnoremap <buffer> <localleader>k :.s/\v^(\s*)("+)\s*/\1/<cr>:silent noh<cr>

colorscheme murphy

" set formatoptions in .vimrc is (seemingly) being overriden by a plugin
" so the following autocmd takes out the (r and o flags) again for the Vim
" file type:
"autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions=cql
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=r
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=o
