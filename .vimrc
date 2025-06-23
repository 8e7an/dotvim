"       /###|   /###|  /###|  /###\      /###|  /#########\   /##########|
"      | ###|  | ###| | ###| | ####\    /####| | ##########| | ##########|
"      | ###|  | ###| | ###| | #####\  /#####| | ### _  ###| | ### _____/
"      | ###|  | ###| | ###| | ######\/######| | ###| | ###| | ###|
"      | ###|  | ###| | ###| | ##############| | ###| | ###| | ###|
"      | ###|  | ###| | ###| | ###  ####  ###| | #########/  | ###|
"      | ###|  | ###| | ###| | ###\  ##/| ###| | #########\  | ###|
"   __ \ ###\__/ ###/ | ###| | ###|\__/ | ###| | ### _  ###| | ###|______
"  /##| \ #########/  | ###| | ###|     | ###| | ###| | ###| | ##########|
" | ##|  \ #######/   | ###| | ###|     | ###| | ###| | ###| \ ##########|
" |__/    \______/    |___/  |___/      |___/  |___/  |___/   \_________/
"
"
" Notes about this file:
" Double quotes (") used to indicate comments.
" 'ex' commands. Omit the preceding : as not required in this (.exrc) file.
"
" <cr> and <enter> do the same thing (I think)
"
" Some online info about vi/vim customisation:
" https://www.peachpit.com/articles/article.aspx?p=31442&seqNum=7
" https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
"

" PLUGINS ------------------------------------------------------------

" Plugins installed in ~./vim/pack/*
" Plugins are git version controlled with remotes to their respective
" creators.
" Look to make .vim my own git repo (`dotvim`) and the plugins sub-repos.
" Installed plugins include:
"   - Surround - https://github.com/tpope/vim-surround
"   - Repeat - https://github.com/tpope/vim-repeat

" Enable type file detection. Vim will be able to try to detect the type of file in use.
"filetype on

" Enable plugins and load plugin for the detected file type.
"filetype plugin on

" Load an indent file for the detected file type.
"filetype indent on

" Filetype plugin customisations located at ~.vim/ftplugin/{filetype}.vim files
" More at: https://vimtricks.com/p/per-file-type-configs/
filetype plugin indent on

" Turn syntax highlighting on.
syntax on

" [nocp] Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" [nobk] Do not save backup files.
set nobackup

" Activate mouse interaction (so splits can be resized with the mouse etc.).
set mouse=a

" [is] Searching though a buffer incrementally highlight matching characters
" as you type.
set incsearch

" Default to ignore case (case insensitive) for things like find & replace.
set ignorecase

" [scs] Override the ignorecase option if searching for capital letters.
" Allows you to search specifically for capital letters.
set smartcase

" [sc] Show partial command you type in the last line of the screen.
set showcmd

" [ss] Set minimum number of columns to scroll horizontally. Used in tandem
" with 'wrap' option off and cursor is off the screen.
"set sidescroll

" [smd] Show the mode you are on the last line (default).
"set showmode

" [nosmd] Do not show the mode on the last line.
"set noshowmode

" [nows] Default to no wrap scan.
"set nowrapscan

" Default no text wrap
set nowrap

" Can also set nowrap with the following variable assignment but better not to
" as is harder to read:
"let &wrap=0

" [cul] Enable cursor line.
set cursorline

" [cuc] Enable cursor column.
set cursorcolumn

" [ts] Tabstop length (override default of 8).
set tabstop=4

" [sts] Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>.
set softtabstop=4

set shiftwidth=4

" (sr) Set indent (>< commands) to multiples of shiftwidth.
set shiftround

" [mat] Tenths of a second to show the matching paren, when 'showmatch' is
" set. Note that this is not in milliseconds.
"set matchtime=number

" [et] Expand tabstops to spaces.
"set expandtab

" Display hidden characters by default (set list! to toggle off or set nolist
" to turn off).
set nolist
set listchars+=tab:>·|
set listchars+=trail:~
set listchars+=space:·
set listchars+=nbsp:·
set listchars+=eol:⏎
set listchars+=precedes:r
set listchars+=extends:˺

" [fdm] The type of folding used for the current window.
"set foldmethod=indent

" [si] Smart indentation
set smartindent

" [nu] Set line numbers to display by default. nonumber to turn off, number! to
" number! to toggle
set number

" [nuw] Set the width of the number column.
"set numberwidth=6

" [rno] Set relative line numbers to display by default.
set relativenumber

" [ru] Set the cursor position (including % location in the file) in the
" status bar.
set ruler

" [ai] auto-indent new lines.
set autoindent

" [is] Incremental highlight search matches.
set incsearch

"  [hls] Highlight search matches
set hlsearch

" [sm] Show matching words during a search.
set showmatch

" [hid] Don't need to write changed buffer before switching to another one.
set hidden

" Set the commands to save in history default number is 20.
set history=50
" Following shows how to set the value of a setting with variables (let) and
" (set):
"let &history=40
"let &history=&history + 10
"set history?

" [pa] Set the find path to include the current directory (of the file) and
" descendant directories.
set path+=**

" [tw] Maximum width of text that is being inserted. A longer line will be
" broken after white space to get this width. A zero value disables this.
" Defaults to 0.
"set textwidth=80

" [wmnu] Enable auto completion menu after pressing TAB.
set wildmenu

" [wim] Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" [wig] There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" CONFIG COLORS WITH AUTO-COMMANDS ------------------------------------------------- {{{

" Set molokai as the color scheme (./vim/colors/molokai.vim).
colorscheme molokai
"
" cterm has a set number of 256 color options. The colors are a number or color name.
" cterm color names can be found here: https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim
" cterm can be set to underline, bold or none (default underline)
" 18 is DarkBlue (ver dark blue)
" 40 is Green3 (light green)
" 46 is Green1 (lightest green)
" 117 is SkyBlue1 (light blue)
" 231 is Grey100 (white)
" 232 is Grey3 (very dark grey)
" 236 is Grey19 (dark grey)

augroup filetype_colours
	autocmd!

	" -- " color on file open (read and buffer).
	" -- autocmd BufReadPre,FileReadPre,InsertLeave * highlight Normal ctermfg=40 ctermbg=232
	" -- autocmd BufReadPre,FileReadPre,InsertLeave * highlight CursorLine cterm=none ctermfg=46 ctermbg=236
	" -- autocmd BufReadPre,FileReadPre,InsertLeave * highlight CursorColumn cterm=none ctermbg=236
	" --
	" -- " Change Color when entering Insert Mode
	" -- " Make the colour of the text in Vim lightblue when in Insert mode
	" -- autocmd InsertEnter * highlight Normal ctermfg=117 ctermbg=232
	" -- "autocmd InsertEnter * highlight CursorLine cterm=none ctermfg=231 ctermbg=18
	" -- autocmd InsertEnter * highlight CursorLine cterm=none ctermfg=231 ctermbg=236
	" -- autocmd InsertEnter * highlight CursorColumn cterm=none ctermbg=236

	" Revert normal colors when back to Command/Normal mode
	" Values sames as for BufReadPre,FileReadPre.
	" autocmd InsertLeave * highlight Normal ctermfg=40 ctermbg=232
	" autocmd InsertLeave * highlight CursorLine cterm=none ctermfg=46 ctermbg=236

	":highlight LineNr ctermfg=grey

	" Set line numbers to bold and toggle colors from normal mode (green) and insert mode (light blue).
	autocmd BufEnter,BufReadPre,FileReadPre,InsertLeave * highlight LineNr ctermfg=40 ctermbg=232 cterm=bold
	autocmd InsertEnter * highlight LineNr ctermfg=117
augroup END
" }}}

" FILE-TYPE AUTO-COMMANDS ------------------------------------------------------------------

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Pico-8 file settings ---------------------- {{{
augroup filetype_p8
	autocmd!
	" Make PICO-8 *.p8 files recognised as Lua files (to use the lua.vim settings).
	autocmd BufNewFile,BufRead *.p8 set ft=lua
augroup END
" }}}

" CSS file settings ---------------------- {{{
augroup filetype_css
	autocmd!
	" Make SCSS (Sass) files recognised as CSS files (to use the css.vim settings).
	autocmd BufNewFile,BufRead *.scss set ft=css
augroup END
" }}}

" Remove any trailing space on each line in HTML files on read (into the buffer) and write (from the buffer).
" TODO Does not work but if/when I figure it out make the fix:
" autocmd BufWritePre,BufRead *.html :normal :%s/\s+$//

" Default to no text wrapping for HTML files.
"autocmd BufNewFile,BufRead *.html setlocal nowrap

" CUSTOM ABBREVIATIONS FOR VARIOUS FILE TYPES ------------------------------

augroup filetype_python
	autocmd!
	" Local leader (\) for various file types (javascript and python)
	" Commented-out here as handled in respective (if there) file type *.vim
	" config files.
	"autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	"autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
	"autocmd FileType python :iabbrev <buffer> iff if:<left>
augroup END

augroup filetype_js
	autocmd!
	" Local leader (\) for various file types (javascript and python)
	" Commented-out here as handled in respective (if there) file type *.vim
	" config files.
	"autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	"autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END

augroup filetype_html
	autocmd!
	" Auto indent HTML files on read (into the buffer) and write (from the buffer).
	autocmd BufWritePre,BufRead *.html :normal gg=G
	" HTML comment
	autocmd FileType html nnoremap <buffer> <localleader>c I<!--<esc>A--><esc>
	" Fold section
	"autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
	" Entity references shorthands
	autocmd FileType html iabbrev <buffer> --- &ndash;
	autocmd FileType html iabbrev <buffer> --= &mdash;
	autocmd FileType html iabbrev <buffer> --a &amp;
	autocmd FileType html iabbrev <buffer> --l &lt;
	autocmd FileType html iabbrev <buffer> --g &gt;
augroup END

augroup markdown_html
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
augroup END

" OVERRIDE/SET KEY COMMANDS ------------------------------------------------------------

" Ctrl+d to delete the current line in insert mode.
inoremap <c-d> <esc>ddi

" Ctrl+u to uppercase full word in insert mode.
inoremap <c-u> <esc>viWU<esc>Ei

" Ctrl+l to lowercase full word in insert mode.
inoremap <c-l> <esc>viWu<esc>Ei

" <esc> in insert mode remapped to jk
" l to move the cursor back to where (in most cases) the cursor was in insert
" mode
inoremap jk <esc>l
"
" No <esc>, <Ctrl+c> or <Ctrl+[> to exit insert mode - use jk instead
" Commented as setting <esc>, <Ctrl+c> or <Ctrl+[> to <nop> seems to break
" things like cursor keys putting in junk characters."
"inoremap <esc> <nop>
"inoremap <c-c> <nop>
"inoremap <c-[> <nop>

" No cursor keys in input mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" <space> to open the command input :
nnoremap <space> :

" Map semicolon (;) to $ (cursor to start of line)
nnoremap ; _

" Map semicolon (') to $ (cursor to end of line)
nnoremap ' $

" Map <tab> key to % to swap between matching brackets - ({[j
nnoremap <tab> %

" Map Y to yank to the end of the current line
nnoremap Y y$

" Ctrl+u to uppercase the full word in normal mode.
nnoremap <c-u> viWU<esc>E

" Ctrl+l to lowercase the full word in normal mode.
nnoremap <c-l> viWu<esc>E

" Map page up and page down moves line under cursor up and down.
" These break on the first and last lines of the document so
" be careful there (TODO: how to fix this behaviour)
nnoremap <pageup> ddkP
nnoremap <pagedown> ddp

" No arrow keys in normal mode - use h, j, k and l
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"unnoremap <right> <nop>

" Map Ctrl k and Ctrl j to the half page scroll Ctrl commands d and u respectively.
nnoremap <c-k> <c-u>
nnoremap <c-j> <c-d>

" [noh] Clear the search match highlighting (won't effect the next search).
nnoremap <silent> <c-n> :nohlsearch<cr>

" Arrow keys to move page up and down in normal mode without changing cursor position
nnoremap <up> <c-y>
nnoremap <down> <c-e>
nnoremap <left> 10<c-y>
nnoremap <right> 10<c-e>

" Resize split windows using arrow keys by pressing:
" ctrl+up, ctrl+down, ctrl+left, or ctrl+right.
" These didn't seem to work for me so commented-out
"noremap <c-up> <c-w>+
"noremap <c-down> <c-w>-
"noremap <c-left> <c-w>>
"noremap <c-right> <c-w><

" Leader mapped to , (replacing \).
:let mapleader = ","

" Local leader mapped to \\ (single \).
:let maplocalleader = "\\"

" CUSTOM LEADER COMMANDS ------------------------------------------------------------

" Map tab to leader 1,2
"nnoremap <c-left> :tabprevious<cr>
"nnoremap <c-right> :tabnext<cr>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt

" Set focus to left split
nnoremap <leader>a <c-w>h
" View the buffers
nnoremap <leader>b :buffers<cr>
" Close the buffer
nnoremap <leader>c :close<cr>
" Unload buffer [N] (default: current buffer) and delete it from the buffer list
nnoremap <leader>C :bdelete<cr>
" Set focus to right split
nnoremap <leader>d <c-w>j
" Set focus to top split
nnoremap <leader>s <c-w>k<cr>
" New horizontal split for the current buffer
nnoremap <leader>Sh :sp<cr>
" New vertical split for the current buffer
nnoremap <leader>Sv :vs<cr>
" Set focus to bottom split
nnoremap <leader>f <c-w>l
" Decrease split width by 1. {number}<leader>' to decrease by {number}
nnoremap <leader>, <c-w><
" Increase split height by 1. {number}<leader>' to increase by {number}
nnoremap <leader>. <c-w>>
" Decrease split height by 1. {number}<leader>' to decrease by {number}
nnoremap <leader>; <c-w>-
" Increase split width by 1. {number}<leader>' to increase by {number}
nnoremap <leader>' <c-w>+
" Set focus to previous tab
nnoremap <leader>n :tabp<cr>
" Set focus to next tab,
nnoremap <leader>m :tabn<cr>
" Open a new tab set
nnoremap <leader>N :tabnew<cr>
" Leader 9 to move current line up one
"nnoremap <leader>9 ddkP
" Leader 0 to move current line down one
"nnoremap <leader>0 ddp
" Inset a blank line (opposite of J). {number}<leader>i for {number} of lines
nnoremap <leader>i i<cr><esc>
" Write changes.
nnoremap <leader>w :w<cr>
" Quit (no save)
nnoremap <leader>q :q<cr>
" Quit and discard any changes
nnoremap <leader>Q :q!<cr>
" Copy all text to the clipboard
nnoremap <leader>e :%y+<cr>
" Create new tab
nnoremap <leader>t :tabe<cr>
" Toggle fold
"nnoremap <leader>z za
" Undo
"nnoremap <leader>z u
" Redo
"nnoremap <leader>x :x<cr>
" Toggle hidden characters
nnoremap <silent> <leader>h :set list!<cr>
" Toggle text wrapping
nnoremap <silent> <leader>r :set wrap!<cr>
" Replace text under cursor or visually selected text with yanked (register) text
nnoremap <leader>p diw"0P
" Toggle spelling
nnoremap <leader>Sp :set spell!<cr>
" Leader [ to change to previous buffer (last cycling around)
nnoremap <leader>[ :bp<cr>
" Map ending square bracket to semicolon (;to change to previous buffer (last cycling around)
" Leader ] to change to next buffer (first cycling around)
nnoremap <leader>] :bn<cr>
" Go to the first buffer
nnoremap <leader>{ :bfirst<cr>
" Go to the last buffer
nnoremap <leader>} :blast<cr>
" Leader v to open the .vimrc file in a vertical split
nnoremap <leader>v :vsp $MYVIMRC<cr>
" Reload/apply the .vimrc
nnoremap <leader>V :source $MYVIMRC<cr>
" Open NetRW in a left-sided split
nnoremap <leader>E :Lex<cr>
" Tidy the indentation the whole document.
nnoremap <leader>= gg=G
" Take the URL under the cursor and convert it to a Markdown link with the
" name of the HTML page.
" url -> [name of page](url)
nnoremap <leader>H yiWEa)<esc>Bi[](<esc>hi<cr><esc>k:r!~/.vim/getwebpagename.sh <c-r>0<cr>kgJgJ
" Works for simple URLs. It has issues with # and ? in URLs as the url is injected here and
" can conflict with Vim.
" Possible to use Visual select of the URL with something like (doesn't
" currently work - copied from Stack Overflow):
"vnoremap <Leader>name "0y :silent call system("~/.vim/getwebpagename.sh", @0)<cr>
" Also if a page redirects its own way (not with redirect headers) this will
" also break this.
" Highlight trailing white-space as an error.
"nnoremap <leader>Sw gg:match Error /\v\s+$/<cr> " <- this works as does the next line:
nnoremap <leader>Sw gg:execute "match Error " . '/\v\s+$/'<cr>
" Clear highlight of white-space error.
"nnoremap <leader>SW :match none<cr> " <- this works as does the next line:
nnoremap <leader>SW :execute "match none"<cr>
" Grep search whole word under the cursor in the directory (and sub-directories recursively)
" providing results in the Vim 'quickfix' window. Adapted from: 
" [Case Study: Grep Operator, Part One / Learn Vimscript the Hard Way]
" (https://learnvimscriptthehardway.stevelosh.com/chapters/32.html)
nnoremap <leader>gg :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen 20<cr>
" 'quickfix' next
nnoremap <leader>gn :silent cnext<cr>
" 'quickfix' previous
nnoremap <leader>gp :silent cprevious<cr>

"nnoremap <leader>html :this is a test

" VISUAL MODE RE-MAPPINGS ------------------------------------------- {{{

" <space> to open the command input :
vnoremap <space> :
vnoremap ' <esc>`<i'<esc>`>a'<esc>
vnoremap " <esc>`<i"<esc>`>a"<esc>
vnoremap ` <esc>`<i`<esc>`>a`<esc>
vnoremap ( <esc>`<i(<esc>`>a)<esc>
vnoremap [ <esc>`<i[<esc>`>a]<esc>
vnoremap { <esc>`<i{<esc>`>a}<esc>
vnoremap < <esc>`<i<<esc>`>a><esc>

" }}}

" STATUS LINE ------------------------------------------------------ {{{
"
" %f – Display the relative path of the current file.
" %F – Display the full path of the current file.
" %M – Modified flag shows if file is unsaved.
" %y – Type of file in the buffer.
" %Y – Type of file in the buffer.
" %R – Displays the read-only flag.
" %b – Shows the ASCII/Unicode character under cursor.
" 0x%B – Shows the hexadecimal character under cursor.
" %l – Display the row number/current line.
" %c – Display the column number.
" %p%% – Show the cursor percentage from the top of the file.
" %L – Display the total lines.
"
" Precede a % code with a number to make it at least that length of
" characters, Eg. %4l to make the line number at least four characters long.
" Use a -{number} to have the value fill from the left.
" Alternatively you can use 0 to precede the {number} to have that value
" instead of blank" spaces.
" Truncate with a . E.g: %.20F so the file path is no longer than 20
" characters.
" =% aligns the following status info to the right.

" Clear status line when vimrc is reloaded:
set statusline=
" Append status line left side:
set statusline+=\ %F\ %M\ %Y\ %R
" Append use a divider to separate the left side from the right side:
set statusline+=%=
" Append status line right side:
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %03l\ (of\ %03L)\ col:\ %-3c\ percent:\ %p%%

" Append show the status on the second to last line.
set laststatus=2

" }}}

" JavaScript file settings ---------------------- {{{
" Following doesn't work to only customise the local (buffer) status line of
" JavaScript files. TODO look to finding out why if ever needed.
"augroup statusline_javascript
"	autocmd!
"	autocmd FileType javascript setlocal statusline=
"	autocmd FileType javascript setlocal statusline+=%02l\ /\ %03L
"augroup END
" }}}

" ABBREVIATIONS ------------------------------------------------------------ {{{
" Insert mode abbreviations
iabbrev teh the
iabbrev hte the
iabbrev waht what
iabbrev tehn then
iabbrev adn and
iabbrev fro for
iabbrev bevs Bevan Sharp
iabbrev @@ bevan.sharp@gmail.com
iabbrev ccopy Copyright 2025 Bevan Sharp, all right reserved
iabbrev ssig --<cr>Bevan Sharp<cr>bevan.sharp@gmail.com
" }}}


