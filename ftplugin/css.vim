"
" css.vim
"

" Turn syntax highlighting on.
syntax on

" Tabstop length (override default of 2).
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Expand tabstops to spaces.
set expandtab

" Code folding
set foldmethod=syntax
" Depth of default folding
set foldlevel=4

" Code (CSS) comment (/* ... */) current line
nnoremap <buffer> <silent> <localleader>j I/* <esc>A */<esc>
" Code (CSS) remove comment (remove /* ... */) current line
nnoremap <buffer> <silent> <localleader>k :.s/\v^(\s*)(\/\*\s*)/\1/<cr>:.s/\v\s*\*\/$//<cr>:silent noh<cr>
" Tidy the indentation the whole document and tidy values after the ':':
"  First:  Tidy the indentation
"  Second: Add any spaces after : that do not have them before them (ignoring not ::)
"  Third:  Add any spaces after the { that do not have a space before them
"  Fourth: Add any missing trailing ; characters on lines that should have  them
nnoremap <buffer> <silent> <localleader>= gg=G<esc>:g/\S[^:]:\S/s/:/: /<cr>:g/\S{/s/{/ {/<cr>:g/[^;,\/\{\}]$/norm A;<cr>:silent noh<cr>g;

" Entity references shorthands
iabbrev bb box-sizing: border-box; 
iabbrev db display: block;
iabbrev dib display: inline-block;
iabbrev df display: flex;
iabbrev dif display: inline-flex;
iabbrev lst list-style-type:
iabbrev abs position: absolute;
iabbrev rel position: relative;
iabbrev fxd position: fixed;
iabbrev zi z-index:
iabbrev zi1 z-index: 1;
iabbrev fl1 flex: 1;
iabbrev fla flex: auto;
iabbrev fl01 flex: 0 1;
iabbrev fl01a flex: 0 1 auto;
iabbrev jcc justify-content: center;
iabbrev jcfs align-items: flex-start;
iabbrev jcfe align-items: flex-end;
iabbrev aic align-items: center;
iabbrev aifs align-items: flex-start;
iabbrev aife align-items: flex-end;
iabbrev gp gap:
iabbrev gp12 gap: 12px;
iabbrev gp24 gap: 24px;
iabbrev m0 margin: 0;
iabbrev p0 padding: 0;
iabbrev bg background:
iabbrev bgc background-color:
iabbrev bn border: none;
iabbrev b1 border: 1px solid var(--black);
iabbrev txd text-decoration:
iabbrev txdn text-decoration: none;
iabbrev txdu text-decoration: underline;
iabbrev txds text-decoration: strike-through;
iabbrev fs font-size:
iabbrev fs0 font-size: 0;
iabbrev fw font-weight:
iabbrev fwn font-weight: normal;
iabbrev fwb font-weight: bold;
iabbrev shd box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.35);

