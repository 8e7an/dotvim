"        ___     ___    ___    ___        ___    _________     _________
"       /###|   /###|  /###|  /###\      /###|  /#########\   /#########\
"      | ###|  | ###| | ###| | ####\    /####| | ##########| | ##########|
"      | ###|  | ###| | ###| | #####\  /#####| | ### _  ###| | ### _  ###|
"      | ###|  | ###| | ###| | ######\/######| | ###| | ###| | ###| |___/
"      | ###|  | ###| | ###| | ##############| | ###| | ###| | ###|
"      | ###|  | ###| | ###| | ###  ####  ###| | #########/  | ###|
"      | ###|  | ###| | ###| | ###|  ##/| ###| | #########\  | ###|  ____
"   __ \ ###|__/ ###/ | ###| | ###|\__/ | ###| | ### _  ###| | ###|_/ ###\
"  /##| \ #########/  | ###| | ###|     | ###| | ###| | ###| | ##########|
" | ##|  \ #######/   | ###| | ###|     | ###| | ###| | ###| \ ##########|
" |__/    \______/    |___/  |___/      |___/  |___/  |___/   \_________/
"
"
"Notes about this file:
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
"   - Surround - Surround text with character and HTML tags - https://github.com/tpope/vim-surround
"   - Repeat - Repeat the last Surround command - https://github.com/tpope/vim-repeat
"   - Ctrl P - Full Path Fuzzy Finder - https://github.com/kien/ctrlp.vim
"   - Vim-Signature - Place, toggle and display marks - https://github.com/kshenoy/vim-signature.git

" Filetype plugin customisations located at ~.vim/ftplugin/{filetype}.vim files
" More at: https://vimtricks.com/p/per-file-type-configs/

" Enable type file detection. Vim will be able to try to detect the type of
" file in use.
"filetype on

" Enable plugins and load plugin for the detected file type and load indent
" for the detected file type.
filetype plugin indent on

" Uncomment on the following line to disable the installed plugin:
"let g:loaded_surround = 1
"let g:loaded_repeat = 1
"let g:loaded_ctrlp = 1
"let g:loaded_Signature = 1
"let g:context_enabled = 0
"let g:loaded_traces_plugin = 1

" Turn syntax highlighting on.
syntax on

" [nocp] Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" [nobk] Do not save backup files.
set nobackup

" Activate mouse interaction (so splits can be resized with the mouse etc.).
set mouse=a

" [re] Use new regular expression engine; more at:
" https://jameschambers.co.uk/vim-typescript-slow
set regexpengine=0

" [acd] Automatically changes Vim's current directory to the active buffer's directory:
" (This setting active may effect plugins).
"set autochdir

" Enable use of terminal gui colours:
"set termguicolors

" [fo] Prevent auto-commenting on new lines (r flag for <enter> when in insert mode
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

" [sc] Show the partial command typed in the last line of the screen.
set showcmd

" [lbr] When line wrapping is activated words break to the next line so not
" split over two lines at the right end of the window.
set linebreak

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

" [sta] Tabbing but 'smarter'.
set smarttab

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

set ruler

" [ai] auto-indent new lines.
set autoindent

" [ar] auto-read changed files.
set autoread
" Suggestions to add these two lines to make the autoread immediate but it
" seems fine to me without them:
"au CursorHold,CursorHoldI * checktime
"au FocusGained,BufEnter * checktime

" [is] Incremental highlight search matches.
set incsearch

"  [hls] Highlight search matches.
set hlsearch

" [sm] Show matching words during a search.
set showmatch

" [hid] Don't need to write changed buffer before switching to another one.
set hidden

" [swb] Jumping to a buffer using a buffer split command.
set switchbuf=useopen,usetab

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

" [wic] When set case is ignored when completing file names and directories.  Has no
" effect when 'fileignorecase' is set.  Does not apply when the shell is used
" to expand wildcards, which happens when there are special characters.
"set wildignorecase

" Include alphanumerics in the increment/decrement operation
"set nrformats+=alpha

" AUTO-COMPLETE WITH DICTIONARY ---------------------------------------------------- {{{

"set dictionary?
"set dictionary+=/usr/share/dict/words
set dictionary=/usr/share/dict/words

" The dictionary is included in the autocomplete without having to enter
" ctrl+x then ctrl+k:
"set complete+=k

" With the following enter ':set spell' to enable spelling auto-complete from
" the dictionary:
set complete+=kspell

" Set the spelling languages:
set spelllang=en_au
set spelllang+=en_gb
"set spelllang+=en_us
"set spelllang+=de_de

" F12 to bring up the dictionary autocomplete (though Ctrl+n is much easier).{{{}}}
" }}}

" Vim searches in the (c)tags in the current and parent directories:
" (The semicolon ; tells Vim to search upwards in the directory tree.)
"set tags=./tags,tags;

" Set molokai as the custom color scheme (./vim/colors/molokai.vim):
"colorscheme molokai

" Set wildcharm as the built-in color scheme:
"colorscheme wildcharm

" [cc] Set the color column to the number of columns. Eg. 80.
"set colorcolumn=80
"highlight ColorColumn ctermbg=darkred
"call matchadd('ColorColumn','\%81v',100)

" CONFIG COLORS WITH AUTO-COMMANDS ------------------------------------------------- {{{

" See :help :highlight for info about colorscheme customizations with colors etc.
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

" With autocmd it can also be written as au.

augroup ColorScheming
	"  Removes any existing autocommands in this group to avoid duplication:
	autocmd!

	" FocusGained and FocusLost is for when the whole terminal window gains and
	" loses focus.

	" WinLeave and WinEnter is for when splits/windows gain and lose focus.
	" Unfortunately you cannot effect the highlight (colors) of splits
	" independently in Vim ( Changing the highlight is always global and can't
	" be changed only for a scope. --
	" https://stackoverflow.com/questions/49301534/vim-highlight-setting-local )
	" setlocal doesn't work - I tried

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

	" Set murphy as the built-in color scheme (instead of colorscheme you can
	" also use colo):
	"colorscheme industry
	"colorscheme slate
	"colo PaperColor
	colo murphy

	" Other Vim autocmd events:
	" BufRead
	" BufNewFile

	" Revert normal colors when back to Command/Normal mode
	" values sames as for bufreadpre,filereadpre.
	" autocmd insertleave * highlight normal ctermfg=40 ctermbg=232
	" autocmd insertleave * highlight CursorLine cterm=none ctermfg=46 ctermbg=236

	":highlight LineNr ctermfg=grey

	" Set color overrides with:
	" Line numbers to bold and toggle colors from normal mode (green) and insert mode (light blue).
	" Visual select IndianRed1 background, Grey100 (white) foreground.

	" cterm=bold or cterm=underline to style property accordingly.
	" cterm=none to clear styling for the property.

	" TabLineFill - Tab background
	" TabLine - In-active tab
	" TabLineSel - Active Tab

	highlight clear

	" Set the Cursor "cross-hair" colours:
	highlight CursorLine ctermbg=235
	highlight CursorColumn ctermbg=236

	autocmd BufEnter,BufReadPre,FileReadPre,InsertLeave,ColorScheme * 
				\ highlight LineNr ctermfg=40 ctermbg=232 cterm=bold |
				\ highlight CursorLineNr ctermfg=232 ctermbg=40 cterm=bold |
				\ highlight Visual ctermbg=203 ctermfg=231 |
        \ highlight StatusLine ctermbg=40 ctermfg=16 cterm=bold |
        \ highlight TabLineFill ctermbg=234 |                        
        \ highlight TabLine ctermbg=237 ctermfg=246 |								 
        \ highlight TabLineSel ctermbg=16 ctermfg=40 cterm=bold |
				\ highlight Normal ctermbg=16 |
				\ highlight Comment ctermfg=151 |
	autocmd InsertEnter * 
				\ highlight LineNr ctermfg=117 ctermbg=232 |
				\ highlight CursorLineNr ctermfg=232 ctermbg=117 |
        \ highlight StatusLine ctermbg=117 |
				"\ highlight Visual ctermbg=103 ctermfg=94
	"autocmd FocusGained *
			  "\ highlight LineNr ctermfg=20 cterm=bold
	"autocmd FocusLost *
			  "\ highlight LineNr ctermfg=30 cterm=none
	"autocmd WinLeave *
			  "\ setlocal nocursorline |
			  "\ setlocal nocursorcolumn |
			  "\ setlocal nonumber |
	"autocmd WinEnter *
			  "\ setlocal cursorline |
			  "\ setlocal cursorcolumn |
			  "\ setlocal number |

augroup END
" }}}

" FILE-TYPE AUTO-COMMANDS ------------------------------------------------------------------

" Vimscript file settings -------------------------------------------------- {{{
augroup filetype_vim
	autocmd!
	" These settings in addition to ftplugin/vim.vim
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Pico-8 file settings ----------------------------------------------------- {{{
augroup filetype_p8
	autocmd!
	" These settings in addition to ftplugin/lua.vim
	" Make PICO-8 *.p8 files recognised as Lua files (to use the lua.vim settings).
	autocmd BufNewFile,BufRead *.p8 set ft=lua
augroup END
" }}}

" CSS file settings -------------------------------------------------------- {{{
augroup filetype_css
	autocmd!
	" These settings in addition to ftplugin/css.vim
	" Make SCSS (Sass) files recognised as CSS files (to use the css.vim settings).
	autocmd BufNewFile,BufRead *.scss set ft=css
	
	" This works but effect the whole of Vim, not just the file of type
	" css:
	"autocmd FileType css colorscheme zaibatsu

augroup END
" }}}

" Remove any trailing space on each line in HTML files on read (into the buffer) and write (from the buffer).
" TODO Does not work but if/when I figure it out make the fix:
" autocmd BufWritePre,BufRead *.html :normal :%s/\s+$//

" Default to no text wrapping for HTML files.
"autocmd BufNewFile,BufRead *.html setlocal nowrap

" CUSTOM ABBREVIATIONS FOR VARIOUS FILE TYPES ------------------------------

augroup filetype_lisp
	autocmd!
	" These settings in addition to ftplugin/lisp.vim
	"
augroup END

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
	
	" This works but effect the whole of Vim, not just the file of type
	" javascript:
	"autocmd FileType javascript colorscheme torte

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

" Clear the Registry --------------------------------------------------------------- {{{
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

" Ctrl-c leaves Insert mode like the Esc key but doesn't trigger the
" InsertLeave autocmd. Setting of the following makes it follow the behaviour.
inoremap <c-c> <esc>

" Ctrl+d to delete the current line in insert mode.
"inoremap <c-d> <esc>ddi

" Ctrl+u to uppercase full word in insert mode. Would use Ctrl+u, but this is
" used by default for deleting all entered chatacters in the current line.
" Ctrl+b for 'BIG' text
inoremap <c-b> <esc>viWU<esc>Ei

" Ctrl+l to lowercase full word in insert mode.
inoremap <c-l> <esc>viWu<esc>Ei

" <esc> in insert mode remapped to jk / JK
" l to move the cursor back to where (in most cases) the cursor was in insert
" mode
inoremap jk <esc>l
inoremap JK <esc>l

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
" Remapping <tab> to % also causes the <c-i> to be remapped 
" (c-i points to tab) which means the tab key calls the jump list newest
" command. Instead leader-tab gets around this issue.
nnoremap <silent> <leader><tab> %

" Map Y to yank to the end of the current line:
nnoremap Y y$

" Ctrl+u to uppercase the full word in normal mode:
"nnoremap <leader> <c-u> viWU<esc>E

" Ctrl+l to lowercase the full word in normal mode:
"nnoremap <leader> <c-l> viWu<esc>E

" Map leader d and leader f + page up and page down moves line 
" under cursor up and down.
" For normal, insert and visual modes.
" Mappings adapted from:
" https://www.youtube.com/watch?v=L93-S4qksVA 
"  Move the line down one (descend line - increase by 1 line number):
nnoremap <silent> <leader>d :m .+1<cr>
nnoremap <silent> <pagedown> :m .+1<cr>
inoremap <silent> <pagedown> <esc>:m .+1<cr>gi
vnoremap <silent> <leader>d :m .+1<cr>gv
vnoremap <silent> <pagedown> :m '>+1<cr>gv
"  Move the line up one (further line up - decrease by 1 line number):
nnoremap <silent> <leader>f :m .-2<cr>
nnoremap <silent> <pageup> :m .-2<cr>
inoremap <silent> <pageup> <esc>:m .-2<cr>gi
vnoremap <silent> <leader>f :m '>-2<cr>gv
vnoremap <silent> <pageup> :m '<-2<cr>gv

"nnoremap <c-s-j> <esc>:m .+1<cr>
"nnoremap <c-s-k> <esc>:m .-2<cr>

" No arrow keys in normal mode - use h, j, k and l:
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"unnoremap <right> <nop>

" Map Ctrl k and Ctrl j to the half page scroll Ctrl commands d and u respectively:
nnoremap <c-k> <c-u>
nnoremap <c-j> <c-d>

" [noh] Clear the search match highlighting (won't effect the next search):
nnoremap <silent> <c-n> :noh<cr>

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
noremap <leader>5 5gt
noremap <leader>6 6gt

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
" Unload buffer [N] (default: current buffer) and delete it from the buffer list:
"nnoremap <leader>C :bdelete<cr>
" Set focus to left split:
nnoremap <leader>h <c-w>h
" Set focus to top split:
nnoremap <leader>k <c-w>k
" Set focus to bottom split:
nnoremap <leader>j <c-w>j
" Set focus to right split:
nnoremap <leader>l <c-w>l

" Go to the next buffer (split/window) and delete the current one:
nnoremap <Leader>bd :bnext<bar>bdelete #<CR>

" 'Special' leader commands. 's' is rather arbitrary for these leader
" short-cuts commands but it's a handy pneumonic
"
" Available leader s commands:
" nnoremap <leader>se
" nnoremap <leader>sg
" nnoremap <leader>sj
" nnoremap <leader>sk
" nnoremap <leader>sm
" nnoremap <leader>su
" nnoremap <leader>sz

" Replace the current line with the date - day month year (note the escaping
" of % with \ - otherwise it outputs the file path):
nnoremap <silent> <leader>sa :.!date '+\%d \%B \%Y'<cr>
"nnoremap <leader>sa :.!date<cr>4wD<esc>
" Toggle line breaking:
nnoremap <silent> <leader>sb :set linebreak!<cr>
" Close the buffer:
nnoremap <silent> <leader>sc :close<cr>:echo "Closed the buffer"<cr>
" View the full path of the file/buffer:
"nnoremap <leader>sf :echo expand('%:p')<cr>
" Show current directory:
nnoremap <leader>sd :pwd<cr>
" Toggle fold column visibility
nnoremap <leader>sf :call <SID>FoldColumnToggle()<cr>
" Toggle hidden characters (i for invisible):
nnoremap <silent> <leader>si :set list!<cr>
" New horizontal split for the current buffer:
nnoremap <silent> <leader>sh :sp<cr>
" New vertical split for the current buffer:
nnoremap <silent> <leader>sv :vs<cr>
" Save the session (to the default Session.vim file):
nnoremap <leader>ss :mksession!<cr>:echo "Session saved to Session.vim"<cr>
" Restore the session (from the default Session.vim file):
nnoremap <leader>sr :source Session.vim<cr>:echo "Session restored from Session.vim"<cr>
" Toggle spelling:
nnoremap <silent> <leader>sp :set spell!<cr>
" Yank the current line to the 'j' register and paste on the next line:
nnoremap <leader>sj "jyyp
" Yank the current line to the 'k' register and paste on the previous line:
nnoremap <leader>sk "kyyP
" Toggle visibility of color column (80)
nnoremap <silent> <leader>sl :call <SID>ColorColumnToggle(80)<cr>
" Open a tag definition for the term under the cusor in a new horizontal split:
nnoremap <silent> <leader>st :stag<cr>
" Tidy the indentation the whole document:
nnoremap <silent> <leader>s= gg=Gg;
" Toggle the Context Plugin:
nnoremap <silent> <leader>sx :ContextToggle<cr>
" Display NetRW in the current buffer.
nnoremap <leader>sn :Ntree .<cr>
" Call the custom BuffOnly command to clear all but the current buffer:
nnoremap <leader>so :BuffOnly<cr>
" Toggle text wrapping:
nnoremap <silent> <leader>sw :set wrap!<cr>
" With 4 vertical splits move the far-right one down below the others:
"nnoremap <leader>sq 4<c-w>l<c-w>J
" Yank in word to the clipboard
nnoremap <silent> <leader>sy "*yiw

" Quicklist leader commands

" Clear the current quickfix list (replace with an empty list).
"nnoremap <silent> <leader>sc :call setqflist([], 'r')<cr>:echo "Quicklist menu cleared"<cr>
nnoremap <silent> <leader>cc :cexpr []<cr>:echo "Quicklist menu cleared"<cr>
" Quicklist previous:
nnoremap <silent> <leader>cp :cprevious<cr>:echo "Previous in the Quicklist"<cr>
" Quicklist next:
nnoremap <silent> <leader>cn :cnext<cr>:echo "Next in the Quicklist"<cr>
" Quicklist open:
"nnoremap <silent> <leader>co :copen<cr>
" Quicklist close:
"nnoremap <silent> <leader>cl :close<cr>
" Quicklist toggle visibility 
nnoremap <silent> <leader>ct :call <SID>QuickfixToggle()<cr>

" Other leader commands

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
"nnoremap <silent> <leader>n :tabp<cr>:echo "Focus previous tab"<cr>
" Leader [ to change to previous buffer (last cycling around):
nnoremap <silent> <leader>n :bp<cr>:echo "Previous buffer"<cr>
" Set focus to next tab:
"nnoremap <silent> <leader>m :tabn<cr>:echo "Focus next tab"<cr>
" Leader ] to change to next buffer (first cycling around):
nnoremap <silent> <leader>m :bn<cr>:echo "Next buffer"<cr>

" Inset blank line ({number}<leader>i for {number} of lines) - good for moving
" text after the cursor down one line:
nnoremap <silent> <leader>i i<cr><esc>
" Add blank line after the cursor 
"   ({number}<leader>o to add {number} of blank lines):
nnoremap <silent> <leader>o o<esc>
" Add blank line before the cursor 
"   ({number}<leader>o to add {number} of blank lines):
nnoremap <silent> <leader>O O<esc>
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
nnoremap <silent> <leader>e :%y+<cr>:echo "Whole file copied to the clipboard"<cr>
" Toggle fold:
nnoremap <leader>z za
" Write and quite file:
nnoremap <leader>x :x<cr>:echo "Save (if there are changes) and quit"<cr>
" Replace text under cursor or visually selected text with yanked (register) text
" (deletes the old text to the "blackhole" register):
nnoremap <silent> <leader>r "_diw"0P

" Leader [ to change to previous buffer (last cycling around):
"nnoremap <leader>[ :bp<cr>
nnoremap <silent> <leader>[ :tabp<cr>:echo "Focus previous tab"<cr>
" Map ending square bracket to semicolon (;to change to previous buffer (last cycling around)
" Leader ] to change to next buffer (first cycling around):
"nnoremap <leader>] :bn<cr>
nnoremap <silent> <leader>] :tabn<cr>:echo "Focus next tab"<cr>
" Go to the first buffer:
"nnoremap <leader>{ :bfirst<cr>
" Go to the first tab:
nnoremap <silent> <leader>{ :tabfirst<cr>:echo "Focus first tab"<cr>
" Go to the last buffer:
"nnoremap <leader>} :blast<cr>
" Go to the last tab:
nnoremap <silent> <leader>} :tabfirst<cr>:echo "Focus last tab"<cr>
" Close current tab:
nnoremap <silent> <leader>tc :tabclose<cr>:echo "Closed tab"<cr>
" Open a new tab:
nnoremap <silent> <leader>tn :tabnew<cr>:echo "New tab"<cr>
" Move the current tab to the first position:
nnoremap <leader>th :tabm 0<cr>:echo "Moved tab to the first position"<cr>
" Move the current tab to the last position:
nnoremap <leader>tl :tabm $<cr>:echo "Moved tab to the last position"<cr>

" Leader v to open the .vimrc file in a vertical split:
nnoremap <leader>v :vsp $MYVIMRC<cr>
" Reload/apply the .vimrc:
nnoremap <leader>V :source $MYVIMRC<cr>
" Open NetRW in a left-sided split:
nnoremap <leader>E :20Lex<cr>
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
"nnoremap <leader>sm gg:match Error /\v\s+$/<cr> " <- this works as does the next line:
"nnoremap <leader>se gg:execute "match Error " . '/\v\s+$/'<cr>
" Clear highlight of white-space error.
"nnoremap <leader>sW :match none<cr> " <- this works as does the next line:
"nnoremap <leader>sW :execute "match none"<cr>
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

"nnoremap <leader>html :this is a test

" VISUAL MODE RE-MAPPINGS ------------------------------------------- {{{

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

" TERMINAL MODE RE-MAPPINGS ---------------------------------------- {{{

" From normal mode open a new Terminal buffer 8 lines high:
nnoremap <leader>T <cmd>belowright split <bar> resize 8 <bar> terminal ++curwin <cr>
" Esc or ctrl-[ to escape from insert mode in the Terminal:

tnoremap <esc> <c-\><c-n> " This mapping works in Terminal app but not iTerm.
tnoremap <c-[> <c-\><c-n> " This mapping works in both Terminal apps.

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

" Status line active colors of dark-green background and black foreground (text):
"  Set in the augroup of filtype_colors as the autocmd there overrides this set
"  here:
"highlight StatusLine ctermbg=2 ctermfg=0

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

" NetRW -------------------------------------------------------------------- {{{
"
" NetRW opens previews in vertical (not horizontal splits) by default:
let g:netrw_preview = 1
" NetRW opens previews to the right (not to the left) by default:
let g:netrw_alto = 0
" NetRW opens in tree view by default:
" (apparently the Tree view is buggy in NetRW so maybe should be avoided)
let g:netrw_liststyle = 3
" NetRW opens without the banner displayed by default:
let g:netrw_banner = 0
" Create the split of the netrw window to the left
"let g:netrw_altv = 1
" Automatically set Vim's working directory to be the same as netrw's current
" directory:
"let g:netrw_keepdir=0
" Set the width of the NetRW window:
let g:netrw_winsize = 16 
" Open files in previous window emulating the typical 'drawer' behavior:
let g:netrw_browse_split = 4

" }}}

" ABBREVIATIONS ------------------------------------------------------------ {{{
" Insert mode abbreviations
"
iabbrev teh the
iabbrev hte the
iabbrev waht what
iabbrev tehn then
iabbrev wehn when
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

" CUSTOM FUNCTIONS ----------------------------------------------------------------- {{{

" https://learnvimscriptthehardway.stevelosh.com/chapters/38.html

" The s: denotes variables and functions scoped to this script (.vimrc) file.
" The a: denotes argument variables that are scoped in the function they are
" passed to.
" Key details about a: variables:
" Scope: They are valid only within the scope of the function in which they are defined.
" Read-Only: You cannot change the value of a function argument (e.g., let a:arg = 1 is invalid).
" Usage: You must prefix the parameter name with a: whenever you use it within the function. 
" s:FunctionName() is called with call: <SID>FunctionName() in the same script
" file.
" 
" Variadic Functions (Variable Number of Arguments):
" If a function is defined with ... to accept variable arguments, the a:
" prefix is used to access them: 
" a:0: The number of extra arguments.
" a:1, a:2, etc.: The specific extra arguments.
" a:000: A list containing all extra arguments. 
" 
" Other Related Scopes:
" g: Global variable (accessible everywhere).
" l: Local variable inside a function.
" b: Buffer-local variable (specific to a file). 
" If you do not use a prefix in a script, it is usually global; using s: is
" considered best practice for internal script variables. 

" s:FunctionName() is called with call <SID>FunctionName() in the same script
" file.

" Toggle fold column visibility
function! s:FoldColumnToggle()
	"echom &foldcolumn
	if &foldcolumn
		setlocal foldcolumn = 0
	else
		setlocal foldcolumn = 4
	endif
endfunction

" Toggle quick fix window visibility 
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

" Toggle the color column's visibility
" Notes: 
"   To assign a variable value to a set property you need to call execute
"     with a string.
"   Cannot have a space around the = sign for assigning a value to a set
"     property. I think setlocal = sign can have a space.
"   A script variable of say let s:color_column = 0 doesn't work with multiple
"	    windows/splits as toggling on the column in one view effects the other
"	    window/splits. Better to check the colorcolumn value of the window/split
"	    with &colorcolumn so the test and set is for each window/split.
function! s:ColorColumnToggle(cols)
	if &colorcolumn
		set colorcolumn=0
		echom a:cols . " columns visibility toggled off"
	else
		execute "set colorcolumn=" . a:cols 
		echom a:cols . " columns visibility toggled on"
	endif
endfunction

" Function to take starting and ending numbers and delete the buffers 
" in that range (inclusive).
function! DelBufsRange(start, end)
	if exists('*getbufinfo')
		echo "Removing buffers ranging from " . a:start . " to " . a:end
		for buffer_info in getbufinfo()
			let l:bufnr = buffer_info.bufnr
			"let l:bufname = buffer_info.name
			if buffer_info.listed
				"echom 'Listed buffer: ' . l:bufnr . ' - ' . l:bufname
				if l:mbufnr >= a:start && l:bufnr <= a:end
					"echo 'Delete buffer: ' . l:bufnr . ' - ' . l:bufname
					execute " bdelete " . l:bufnr
				endif
			endif
		endfor
	else
		echo "The function 'getbufinfo' is not availble. No buffers removed"
	endif
endfunction

" Call the DelBufsRange function as an EX command with:
" :call DelBufsRange({startnumber}, {endumber})
" Eg. :call DelBufsRange(4,10) to delete buffers from 4 (inclusive) to 10 (inclusive).
command! DelBufsRange call DelBufsRange(<f-args>)

" Function to take a variable number of integer arguments and delete 
" buffers with any of the arguments.
function! DelBufsInstances(...)
	let l:bufnrlist = map(getbufinfo({'buflisted': 1}), 'v:val.bufnr')
	for l:arg in a:000
		if index(l:bufnrlist, l:arg) != -1
			echom "Deleting buffer: " . l:arg
			execute " bdelete " . l:arg
		endif
	endfor

	" Following also works but two loops instead of using map() function
	" to get the listed buffer numbers.

	" echom "Removing buffers instances"
	" echom "Number of args provded: " . a:0
	" for l:arg in a:000
	" 	" echom "Argument: " . l:arg
	" 	for buffer_info in getbufinfo()
	" 		let l:bufnr = buffer_info.bufnr
	" 		"let l:bufname = buffer_info.name
	" 		if buffer_info.listed
	" 			if l:bufnr == l:arg
	" 				echom "Deleting buffer: " . l:arg
	" 				execute " bdelete " . l:bufnr
	" 				break
	" 			endif
	" 		endif
	" 	endfor
	" endfor

endfunction


" Call the DelBufsInstances function as an EX command with:
" :call DelBufsInstances({number}...)
" Eg. :call DelBufsInstances(4,10,13) to delete buffer from 4, 10 and 13 (if there).
command! DelBufsInstances call DelBufsInstances(<f-args>)

" }}}

" TODO: does this apply for calling the `git mergetool` (for vimdiff):
if &diff
	"nnoremap <leader>1 :diffget LOCAL<cr>"echo "Selected LOCAL"<cr>
	nnoremap <leader>1 :diffget LOCAL<cr>
  nnoremap <leader>2 :diffget BASE<cr>
  nnoremap <leader>3 :diffget REMOTE<cr>
	colorscheme zaibatsu
endif

" Clear all but the current buffer (sourced from Google AI):
" This command is a sequence of three separate commands chained together using
" the pipe symbol (|). 
" - :%bd (or :%bdelete): This command deletes all buffers, including the current
"   one, leaving you in a new, empty (unlisted) buffer.
" - :e# (or :edit #): The # is a special register that refers to the 'alternate file'
"   (the buffer you were in immediately before the deletion process started). 
"   This command re-opens your original, current buffer for editing.
" - :bd# (or :bdelete #): After the previous step, the new empty buffer becomes
"   the alternate file. This command deletes that empty, unneeded buffer. 
command! BuffOnly silent! execute "%bd|e#|bd#"

