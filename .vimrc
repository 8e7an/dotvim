"        ___     ___    ___    ___        ___    _________     _________
"       /###|   /###|  /###|  /###\      /###|  /#########\   /#########\
"      | ###|  | ###| | ###| | ####\    /####| | ##########| | ##########|
"      | ###|  | ###| | ###| | #####\  /#####| | ### _  ###| | ### __ ###|
"      | ###|  | ###| | ###| | ######\/######| | ###| | ###| | ###|  |___/
"      | ###|  | ###| | ###| | ##############| | ###| | ###| | ###|
"      | ###|  | ###| | ###| | ###  ####  ###| | #########/  | ###|
"      | ###|  | ###| | ###| | ###|  ##/| ###| | #########\  | ###|   ___
"   __ \ ###|__/ ###/ | ###| | ###|\__/ | ###| | ### _  ###| | ###|__|###\
"  /##| \ #########/  | ###| | ###|     | ###| | ###| | ###| | ##########|
" | ##|  \ #######/   | ###| | ###|     | ###| | ###| | ###| \ ##########|
" |__/    \______/    |___/  |___/      |___/  |___/  |___/   \_________/
"
"
" Notes about this file:
" Double quotes (") comments.
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
" Plugins are git version controlled with remotes to their respective Github
" accounts.
" The .vim folder is my own git repo (`dotvim`) with the plugins as sub-repos
" (pointing to their respective github accounts).
" Installed plugins include:
"   - Surround - https://github.com/tpope/vim-surround
"   - Repeat - https://github.com/tpope/vim-repeat
"   - Ctrl P - Full Path Fuzzy Finder - https://github.com/kien/ctrlp.vim

" Filetype plugin customisations located at ~.vim/ftplugin/{filetype}.vim files
" More at: https://vimtricks.com/p/per-file-type-configs/

" Enable type file detection. Vim will be able to try to detect the type of
" file in use.
"filetype on

" Enable plugins and load plugin for the detected file type. And
" Load an indent file for the detected file type.
filetype plugin indent on

" Turn syntax highlighting on.
syntax on

" [nocp] Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" [nobk] Do not save backup files.
set nobackup

" Activate mouse interaction (so splits can be resized with the mouse etc.).
set mouse=a

" Use new regular expression engine; more at:
" https://jameschambers.co.uk/vim-typescript-slow
set re=0

" Prevent auto-commenting on new lines (r flag for <enter> when in insert mode
" and o flag for o/O command in normal mode)
set formatoptions-=r
set formatoptions-=o

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
set tabstop=2

" [sts] Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>.
set softtabstop=2

" shiftwidth determines the size of an indentation level." It specifies the
" number of spaces to use for each step " of indentation when commands like >>
" (indent line), << (unindent line), and automatic indentation features (like
" cindent or autoindent) are used.
set shiftwidth=2

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

" New horizontal and vertical splits are to the bottom and right (not top and
" left)
set splitbelow splitright

" Set the character in the vertical split to \ (defaults to |)
"set fillchars+=vert:\

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

" AUTO-COMPLETE WITH DICTIONARY ---------------------------------------------------- {{{

"set dictionary?
"set dictionary+=/usr/share/dict/words
set dictionary=/usr/share/dict/words

" The dictionary is included in the autocomplete without having to enter
" ctrl+x then ctrl+k:
"set complete+=k

" with the following enter ':set spell' to enable spelling auto-complete
set complete+=kspell

" F12 to bring up the dictionary autocomplete (though ctrl+n is much easier).{{{}}}
" }}}

" Set molokai as the custom color scheme (./vim/colors/molokai.vim):
"colorscheme molokai

" Set murphy as the built-in color scheme:
colorscheme murphy

"highlight ColorColumn ctermbg=darkred
"call matchadd('ColorColumn','\%81v',100)

" CONFIG COLORS WITH AUTO-COMMANDS ------------------------------------------------- {{{

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
	" values sames as for bufreadpre,filereadpre.
	" autocmd insertleave * highlight normal ctermfg=40 ctermbg=232
	" autocmd insertleave * highlight cursorline cterm=none ctermfg=46 ctermbg=236

	":highlight LineNr ctermfg=grey

	" Set color overrides with:
	" Line numbers to bold and toggle colors from normal mode (green) and insert mode (light blue).
	" Visual select IndianRed1 background, Grey100 (white) foreground
	autocmd BufEnter,BufReadPre,FileReadPre,InsertLeave * 
				\ highlight LineNr ctermfg=40 ctermbg=232 cterm=bold |
				\ highlight CursorLineNr ctermfg=232 ctermbg=40 cterm=bold |
				\ highlight Visual ctermbg=203 ctermfg=231 |
	autocmd insertenter * 
				\ highlight LineNr ctermfg=117 ctermbg=232 |
				\ highlight CursorLineNr ctermfg=232 ctermbg=117 |
				"\ highlight Visual ctermbg=103 ctermfg=94

augroup END
" }}}

" FILE-TYPE AUTO-COMMANDS ------------------------------------------------------------------

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
	autocmd!
	" These settings in addition to ftplugin/vim.vim
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Pico-8 file settings ---------------------- {{{
augroup filetype_p8
	autocmd!
	" These settings in addition to ftplugin/lua.vim
	" Make PICO-8 *.p8 files recognised as Lua files (to use the lua.vim settings).
	autocmd BufNewFile,BufRead *.p8 set ft=lua
augroup END
" }}}

" CSS file settings ---------------------- {{{
augroup filetype_css
	autocmd!
	" These settings in addition to ftplugin/css.vim
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
	" These settings in addition to ftplugin/python.vim
	"
augroup END

augroup filetype_js
	autocmd!
	" These settings in addition to ftplugin/javascript.vim
	"
augroup END

augroup typescript_js
	autocmd!
	" Treat TypeScript files as JavaScript files 
	autocmd BufNewFile,BufRead *.ts set ft=javascript
	" These settings in addition to ftplugin/typescript.vim
  "autocmd BufRead,BufNewFile *.ts setfiletype typescript
	"
augroup END

augroup filetype_html
	autocmd!
	" These settings in addition to ftplugin/html.vim
	"
	" Auto indent HTML files on read (into the buffer) and write (from the buffer).
	autocmd BufWritePre,BufRead *.html :normal gg=G
augroup END

augroup filetype_markdown
	autocmd!
	" These settings in addition to ftplugin/markdown.vim
	"
augroup END

" COMMANDS ---------------------------------------------------------------------------------

" Clear the Registry ---------------------- {{{
augroup commands
	command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
augroup END
" }}}

" OVERRIDE/SET KEY COMMANDS ------------------------------------------------------------

" Leader Remapping ---------------------- {{{

" Leader mapped to , (replacing \):
"let mapleader = ","
"
let mapleader = "\<space>"
" Local leader mapped to \\ (escaped \):
"let maplocalleader = "\\"
let maplocalleader = "\<cr>"
" }}}

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

" No cursor keys in input mode:
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" <space> to open the command input : in normal mode
"nnoremap <space> :
" <leader><space> to open the command input : in normal mode
nnoremap <leader><space> :

" Map semicolon (;) to _ (cursor to start of line):
"nnoremap ; _

" Map semicolon (') to $ (cursor to end of line):
"nnoremap ' $

" Map <tab> key to % to swap between matching brackets - ({[j:
nnoremap <tab> %

" Map Y to yank to the end of the current line:
nnoremap Y y$

" Ctrl+u to uppercase the full word in normal mode:
nnoremap <c-u> viWU<esc>E

" Ctrl+l to lowercase the full word in normal mode:
nnoremap <c-l> viWu<esc>E

" Map page up and page down moves line under cursor up and down.
" For normal, insert and visual modes.
" Mappings adapted from:
" https://www.youtube.com/watch?v=L93-S4qksVA 
nnoremap <silent> <pageup> :m .-2<cr>
nnoremap <silent> <pagedown> :m .+1<cr>
inoremap <silent> <pageup> <esc>:m .-2<cr>gi
inoremap <silent> <pagedown> <esc>:m .+1<cr>gi
vnoremap <silent> <pageup> :m '<-2<cr>gv
vnoremap <silent> <pagedown> :m '>+1<cr>gv

"nnoremap <silent> s <esc>:m .-2<cr>
"nnoremap <silent> S <esc>:m .+1<cr>

nnoremap <silent> <leader>k <esc>:m .-2<cr>
nnoremap <silent> <leader>j <esc>:m .+1<cr>

"nnoremap <c-s-k> <esc>:m .-2<cr>
"nnoremap <c-s-j> <esc>:m .+1<cr>

" No arrow keys in normal mode - use h, j, k and l:
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"unnoremap <right> <nop>

" Map Ctrl k and Ctrl j to the half page scroll Ctrl commands d and u respectively:
nnoremap <c-k> <c-u>
nnoremap <c-j> <c-d>

" [noh] Clear the search match highlighting (won't effect the next search):
nnoremap <silent> <c-n> :nohlsearch<cr>

" Arrow keys to move page up and down in normal mode without changing cursor
" position:
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

" CUSTOM LEADER COMMANDS ------------------------------------------------------------

" Map tab to leader 1, 2, 3 and 4:
"nnoremap <c-left> :tabprevious<cr>
"nnoremap <c-right> :tabnext<cr>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt

" Jump to next `f` / `F` / `t` / `T` match on the line:
	"nnoremap <leader>; ;
" Map comma (,) to _ (cursor to the first non-white space character on the line):
nnoremap <silent> <leader>, _
" Map semicolon (;) to $ (cursor to end of line):
nnoremap <silent> <leader>; $
" View the registers:
nnoremap <leader>R :reg<cr>
" View the buffers:
nnoremap <leader>B :buffers<cr>
" View the jumps:
nnoremap <leader>J :jumps<cr>
" View the marks:
nnoremap <leader>M :marks<cr>
" View the full path of the file/buffer:
nnoremap <leader>F :echo expand('%:p')<cr>
" Close the buffer:
nnoremap <leader>c :close<cr>
" Unload buffer [N] (default: current buffer) and delete it from the buffer list:
nnoremap <leader>C :bdelete<cr>
" Set focus to left split:
nnoremap <leader>a <c-w>h
" Set focus to top split:
nnoremap <leader>s <c-w>k
" Set focus to bottom split:
nnoremap <leader>d <c-w>j
" Set focus to right split:
nnoremap <leader>f <c-w>l
" New horizontal split for the current buffer:
nnoremap <leader>Sh :sp<cr>
" New vertical split for the current buffer:
nnoremap <leader>Sv :vs<cr>>
" Save the session (to the default Session.vim file):
nnoremap <leader>Ss :mksession!<cr>:echo "Session saved to Session.vim"<cr>
" Restore the session (from the default Session.vim file):
nnoremap <leader>Sr :source Session.vim<cr>:echo "Session restored from Session.vim"<cr>
" Reposition horizontal split to  vertical split:
nnoremap <leader>tt <c-w>t<c-w>H
" Reposition vertical split to horizontal split:
nnoremap <leader>tk <c-w>t<c-w>K
" Decrease split width by 15:
nnoremap <leader>< 15<c-w><:echo "Decrease split width by 15"<cr>
" Increase split width by 15:
nnoremap <leader>> 15<c-w>>:echo "Increase split width by 15"<cr>
" Decrease split height by 12:
nnoremap <leader>9 10<c-w>-:echo "Decrease split height by 12"<cr>
" Increase split height by 12:
nnoremap <leader>0 10<c-w>+:echo "Increase split height by 12"<cr>
" Decrease split width by 1. {number}<leader>' to decrease by {number}:
"nnoremap <leader>, <c-w><
" Increase split height by 1. {number}<leader>' to increase by {number}:
"nnoremap <leader>. <c-w>>
" Decrease split height by 1. {number}<leader>' to decrease by {number}:
"nnoremap <leader>; <c-w>-
" Increase split height by 1. {number}<leader>' to increase by {number}:
"nnoremap <leader>' <c-w>+
" Set focus to previous tab:
nnoremap <leader>n :tabp<cr>:echo "Focus previous tab"<cr>
" Set focus to next tab:
nnoremap <leader>m :tabn<cr>:echo "Focus next tab"<cr>
" Open a new tab set:
nnoremap <leader>N :tabnew<cr>:echo "New tab"<cr>
" Inset blank line ({number}<leader>i for {number} of lines) - good for moving
" text after the cursor down one line:
nnoremap <silent> <leader>i i<cr><esc>
" Add blank line ({number}<leader>o to add {number} of blank lines):
nnoremap <silent> <leader>o o<esc>
" Write changes:
nnoremap <leader>w :w<cr>:echo "Write changes to file."<cr>
" Write changes to all:
nnoremap <leader>W :wa<cr>:echo "Write changes to all files."<cr>
" Quit (no save) - unsaved files warning issued on buffer closed:
nnoremap <silent> <leader>q :q<cr>
" Quit and discard any changes (for all files) - the nuclear option:
nnoremap <silent> <leader>Q :qa!<cr>
" Copy line to the system clipboard:
"nnoremap <silent> <leader>l :.y+<cr>
nnoremap \ :.y+<cr>:echo "Line copied to clipboard"<cr>
" Paste from the system clipboard with the pipe (shift+\) - needs to be escaped
nnoremap \| "*p<cr>:echo "Line pasted from clipboard"<cr>
" Copy all text to the clipboard:
nnoremap <leader>e :%y+<cr>
" Toggle fold:
nnoremap <leader>z za
" Write and quite file:
nnoremap <leader>x :x<cr>:echo "Save (if there are changes) and quit"<cr>
" Toggle hidden characters:
nnoremap <silent> <leader>h :set list!<cr>
" Toggle text wrapping:
nnoremap <silent> <leader>r :set wrap!<cr>
" Replace text under cursor or visually selected text with yanked (register) text:
nnoremap <silent> <leader>p diw"0P
" Toggle spelling:
nnoremap <leader>Sp :set spell!<cr>
" Output the date - day month year (note the escaping of % with \ - otherwise
" it outputs the file path):
nnoremap <leader>Sd :.!date '+\%d \%B \%Y'<cr>
"nnoremap <leader>Sd :.!date<cr>4wD<esc>
" Leader [ to change to previous buffer (last cycling around):
nnoremap <leader>[ :bp<cr>
" Map ending square bracket to semicolon (;to change to previous buffer (last cycling around)
" Leader ] to change to next buffer (first cycling around):
nnoremap <leader>] :bn<cr>
" Go to the first buffer:
nnoremap <leader>{ :bfirst<cr>
" Go to the last buffer:
nnoremap <leader>} :blast<cr>
" Leader v to open the .vimrc file in a vertical split:
nnoremap <leader>v :vsp $MYVIMRC<cr>
" Reload/apply the .vimrc:
nnoremap <leader>V :source $MYVIMRC<cr>
" Open NetRW in a left-sided split:
nnoremap <leader>E :Lex<cr>
" Tidy the indentation the whole document:
nnoremap <leader>= gg=Gg;
" Create new tab:
nnoremap <leader>St :tabe<cr>
" Take the URL under the cursor and convert it to a Markdown link with the:
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
"nnoremap <leader>gg :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen 20<cr>
" 'quickfix' next
"nnoremap <leader>gn :silent cnext<cr>
" 'quickfix' previous
"nnoremap <leader>gp :silent cprevious<cr>
"Delete the current line to the 'black hole' (not stored in the unnamed
"register) and remove the current line.
nnoremap <leader>D "_dd:echo "Delete into the 'black hole' and removed line"<cr>
"Map the backspace/delete <bs> key to delete the current line to the 'black
"hole' and leave the current line blank.
nnoremap <bs> _"_D:echo "Also delete into the 'black hole' and leave line"<cr>

" Uppercase full word in insert mode.
"nnoremap <leader>Su <esc>viWU<esc>Ei

" Lowercase full word in insert mode.
"nnoremap <leader>Sl <esc>viWu<esc>Ei

"nnoremap <leader>html :this is a test

" VISUAL MODE RE-MAPPINGS ------------------------------------------- {{{

" <space> to open the command input : in visual mode
"vnoremap <space> :
" <leader><space> to open the command input : in visual mode
vnoremap <leader><space> :

" <leader> commands to wrap text in visual mode
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>` <esc>`<i`<esc>`>a`<esc>
vnoremap <leader>( <esc>`<i(<esc>`>a)<esc>
vnoremap <leader>[ <esc>`<i[<esc>`>a]<esc>
vnoremap <leader>{ <esc>`<i{<esc>`>a}<esc>
vnoremap <leader>< <esc>`<i<<esc>`>a><esc>
vnoremap <leader>** <esc>`<i**<esc>`>a**<esc>
vnoremap <leader>* <esc>`<i*<esc>`>a*<esc>

" }}}

" STATUS LINE ------------------------------------------------------ {{{
"
" %f – Display the relative path of the current file.
" %F – Display the full path of the current file (includes ~ if located in the home directory).
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

" JavaScript file settings ------------------------------------------------- {{{
"
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
"
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
iabbrev krsig Kind regards,<cr>Bevan Sharp
iabbrev krlsig Kind regards,<cr>Bevan Sharp<cr>bevan.sharp@gmail.com
iabbrev lorem  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
iabbrev loremp Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit.<cr><cr>Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.<cr><cr>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

" }}}

" TOGGLING ------------------------------------------------------------------------- {{{
" https://learnvimscriptthehardway.stevelosh.com/chapters/38.html

" Toggle fold column visibility
nnoremap <leader>Sf :call <SID>FoldColumnToggle()<cr>
function! s:FoldColumnToggle()
	"echom &foldcolumn
	if &foldcolumn
		setlocal foldcolumn=0
	else
		setlocal foldcolumn=4
	endif
endfunction

" Toggle quick fix window visibility 
nnoremap <leader>Sq :call <SID>QuickfixToggle()<cr>
let s:quickfix_is_open = 0
function! s:QuickfixToggle()
	if s:quickfix_is_open
		cclose
		let s:quickfix_is_open = 0
		execute s:quitckfix_return_to_window . "wincmd w"
	else
		let s:quitckfix_return_to_window = winnr()
		copen
		let s:quickfix_is_open = 1
	endif
endfunction

" }}}
