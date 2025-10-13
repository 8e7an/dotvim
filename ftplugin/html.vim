"
" html.vim
"
"

" syntax on

" Tabstop length (override default of 2).
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Expand tabstops to spaces.
set expandtab

" Code folding
set foldmethod=indent
" Depth of default folding
set foldlevel=8
"
" Code (html etc.) add comment (starting <!-- and ending -->) to the current line
nnoremap <buffer> <silent> <localleader>j I<!-- <esc>A --><esc>
" Code (html etc.) remove comment (starting <!-- and ending -->) from the current line
nnoremap <buffer> <silent> <localleader>k :.s/^\(\s*\)<!--\s\?/\1/<cr>:.s/\s*-->\s*$//<cr>

" Entity references shorthands
autocmd FileType html iabbrev <buffer> --- &ndash;
autocmd FileType html iabbrev <buffer> --= &mdash;
autocmd FileType html iabbrev <buffer> --a &amp;
autocmd FileType html iabbrev <buffer> --l &lt;
autocmd FileType html iabbrev <buffer> --g &gt;
autocmd FileType html iabbrev <buffer> --' &lsquo;
autocmd FileType html iabbrev <buffer> '-- &rsquo;
autocmd FileType html iabbrev <buffer> --" &ldquo;
autocmd FileType html iabbrev <buffer> "-- &rdquo;

