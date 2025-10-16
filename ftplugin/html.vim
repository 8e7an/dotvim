"
" html.vim
"

" Turn syntax highlighting on.
syntax on

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
" Code (HTML etc.) add comment (starting <!-- and ending -->) to the current line
nnoremap <buffer> <silent> <localleader>j I<!-- <esc>A --><esc>
" Code (HTML etc.) remove comment (starting <!-- and ending -->) from the current line
nnoremap <buffer> <silent> <localleader>k :.s/^\(\s*\)<!--\s\?/\1/<cr>:.s/\s*-->\s*$//<cr>
" HTML Element Shortcuts
nnoremap <buffer> <silent> <localleader>1 i<h1></h1><esc>4hi
nnoremap <buffer> <silent> <localleader>2 i<h2></h2><esc>4hi
nnoremap <buffer> <silent> <localleader>3 i<h3></h3><esc>4hi
nnoremap <buffer> <silent> <localleader>4 i<h4></h4><esc>4hi
nnoremap <buffer> <silent> <localleader>5 i<h5></h5><esc>4hi
nnoremap <buffer> <silent> <localleader>6 i<h6></h6><esc>4hi
nnoremap <buffer> <silent> <localleader>d i<div><cr><cr></div><esc>ki
nnoremap <buffer> <silent> <localleader>s i<section><cr><cr></section><esc>ki
nnoremap <buffer> <silent> <localleader>h i<heading><cr><cr></heading><esc>ki
nnoremap <buffer> <silent> <localleader>f i<footer><cr><cr></footer><esc>ki
nnoremap <buffer> <silent> <localleader>p i<p></p><esc>3hi
nnoremap <buffer> <silent> <localleader>e i<em></em><esc>4hi

" Entity References Abbreviations
"autocmd FileType html iabbrev <buffer> --- &ndash;
iabbrev --- &ndash;
iabbrev --= &mdash;
iabbrev --a &amp;
iabbrev --l &lt;
iabbrev --g &gt;
iabbrev --' &lsquo;
iabbrev '-- &rsquo;
iabbrev --" &ldquo;
iabbrev "-- &rdquo;

