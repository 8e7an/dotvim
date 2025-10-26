"
" lua.vim
"

" Turn syntax highlighting on.
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4

" Expand tabstops to spaces.
set expandtab

" Code folding
set foldmethod=indent
" Depth of default folding
set foldlevel=4

"Set the (custom) leader commands.
" Insert comment (--) current line.
nnoremap <leader>j I--<esc>
" Remove comment (remove --) current line.
nnoremap <leader>k :.s/\v^(\s*)(--+)/\1/<cr>:silent noh<cr>

" TODO: block-level quoting and unquoting in Lua

" Insert function template
nnoremap <buffer> <localleader>fun ifunction ()<cr><tab><cr>end<esc>2k_f(i
" If Template
nnoremap <buffer> <localleader>if iif  do<cr><tab><cr>end<esc>2k_fdhi
" For loop template
nnoremap <buffer> <localleader>loop ifor i=0, 10 do<cr><tab><cr>end<esc>ki
" While loop template
nnoremap <buffer> <localleader>while iwhile  do<cr><tab><cr>end<esc>2k_fdhi
" Do while loop template
nnoremap <buffer> <localleader>do irepeat<cr><tab><cr>until <esc>i

" set formatoptions in .vimrc is (seemingly) being overriden by a plugin
" so the following autocmd takes out the (r and o flags) again for the Lua
" file type:
"autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions=cql
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=r
autocmd BufEnter,BufReadPre,InsertLeave * setlocal formatoptions-=o
