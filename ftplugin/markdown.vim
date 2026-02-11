"
" markdown.vim
"

" Syntax highlighting on
syntax on

" Spellcheck enabled with Vim's spell checker
setlocal spell

" Folding
setlocal foldmethod=syntax

"Operator-Pending mappings for Markdown files
" 'in heading' of the previously found heading
"autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
" 'around heading' of the previously found heading
"autocmd FileType markdown onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
" 'in sub-heading' of the previously found sub-heading
"autocmd FileType markdown onoremap is :<c-u>execute "normal! ?^\\-\\-\\+$\r:nohlsearch\rkvg_"<cr>
" 'around sub-heading' of previously found sub-heading
"autocmd FileType markdown onoremap as :<c-u>execute "normal! ?^\\-\\-\\+$\r:nohlsearch\rg_vk0"<cr>
" 'in next eamil address' (it's a rough regex for email but should work ok)
"autocmd FileType markdown onoremap in@ :<c-u>execute "normal! /\[0-9a-zA-Z_\\.\\-\]@\[0-9a-zA-Z\\.\]\r:nohlsearch\rviW"<cr>
