"
" lua.vim
"
"

" syntax on

" Tabstop length (override default of 2).
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Expand tabstops to spaces.
set expandtab

"Set the (custom) leader commands.
" Insert comment (--) current line.
nnoremap <leader>j I--<esc>
" Remove comment (remove --) current line.
nnoremap <leader>k :.s/\v^(\s*)(--+)/\1/<cr>

" Code folding
set foldmethod=indent
" Depth of deafult folding
set foldlevel=2
