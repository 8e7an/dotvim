	" VI/VIM Global configuration file .vimrc
"
"        ___     ___    ___    ___        ___    _________     __________
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
" 'ex' commands. Ommit the preceeding : as not required in this (.exrc) file.
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

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Do not save backup files.
set nobackup

" Activate mouse interaction (so splits can be resized with the mouse etc.).
set mouse=a

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Default to ignore case (case insensitive) for things like find & replace.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" Allows you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line (default).
"set showmode

" Do not show the mode on the last line.
"set noshowmode

" Default to no wrap scan.
"set nowrapscan

" Default no text wrap
set nowrap

" Enable CursorLine.
set cursorline

" Enable CursorColumn.
set cursorcolumn

" Tabstop length (override default of 8).
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Expand tabstops to spaces.
"set expandtab

" Display hidden characters by default (set list! to toggle off or set nolist to turn off).
set nolist
set listchars+=tab:>·|
set listchars+=trail:~
set listchars+=space:·
set listchars+=nbsp:·
set listchars+=eol:⏎
set listchars+=precedes:r
set listchars+=extends:˺

" Folding
"set foldmethod=indent

" Smart indentation
set smartindent

" Set line numbers to display by default.
set number

" Set relative line numbers to display by default.
set relativenumber

" Set the cursor position (including % location in the file) in the status bar.
set ruler

" auto-indent new lines.
set autoindent

" Incremental higlight search matches.
set is

" Higlight search matches.
set hlsearch

" Show matching words during a search.
set showmatch

" Don't need to write changed buffer before switching to another one.
set hidden

" Set the commands to save in history default number is 20.
set history=50

" Set the find path to include the current directory (of the file) and
" decendant directories.
set path+=**

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Make PICO-8 *.p8 files recognised as Lua files (to use the lua.vim settings).
autocmd BufNewFile,BufRead *.p8 set ft=lua

" Make SCSS (Sass) files recognised as CSS files (to use the css.vim settings).
autocmd BufNewFile,BufRead *.scss set ft=css

" COLORS ------------------------------------------------------------ 

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
"
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

" OVERRIDE/SET KEY COMMANDS ------------------------------------------------------------ 

" <esc> in insert mode remapped to jk
inoremap jk <esc>
 
" No <esc> to exit insert mode - use jk 
" Commented as seems to break things"
"inoremap <esc> <nop>

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

" Map page up and page down moves line under cursor up and down
nnoremap <pageup> ddkP
nnoremap <pagedown> ddp

" No arrow keys in normal mode - use h, j, k and l
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"unnoremap <right> <nop>

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
" Set focus to right split
nnoremap <leader>d <c-w>j
" Set focus to top split
nnoremap <leader>s <c-w>k
" Create vertical split
nnoremap <leader>u :vsplit<cr>
" Set focus to bottom split
nnoremap <leader>f <c-w>l
" Decrease split width by 1. {number}<leader>' to decreaese by {number}
nnoremap <leader>, <c-w><
" Increase split height by 1. {number}<leader>' to increaese by {number}
nnoremap <leader>. <c-w>>
" Decrease split height by 1. {number}<leader>' to decreaese by {number}
nnoremap <leader>; <c-w>-
" Increase split width by 1. {number}<leader>' to increaese by {number}
nnoremap <leader>' <c-w>+
" Set focus to previous tab
nnoremap <leader>n :tabp<cr>
" Set focus to next tab,
nnoremap <leader>m :tabn<cr>
" Open a new tabset
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
" Copy all text to the clipboard
nnoremap <leader>e :%y+<cr>
" Create new tab
nnoremap <leader>t :tabe<cr>
" Toggle fold
"nnoremap <leader>z za
" Undo
"nnoremap <leader>z u
" Redo
nnoremap <leader>x :x<cr>
" Toggle hidden characters
nnoremap <leader>h :set list!<cr>
" Toggle text wrapping
nnoremap <leader>r :set wrap!<cr>
" Replace text under cursor or visually selected text with yanked (register) tex
nnoremap <leader>p diw"0P
" Leader [ to change to previous buffer (last cycling around)
nnoremap <leader>[ :bp<cr>
"Map ending square bracket to semicolon (;to change to previous buffer (last cycling around)
" Leader ] to change to next buffer (first cycling around)
nnoremap <leader>] :bn<cr>
" Leader v to open the .vimrc file in a vertical split
nnoremap <leader>v :vsp $MYVIMRC<cr>
" Reload/apply the .vimrc 
nnoremap <leader>V :source $MYVIMRC<cr>

nnoremap <leader>html :this is a test


" STATUS LINE ------------------------------------------------------------ 
"
" %F – Display the full path of the current file.
" %M – Modified flag shows if file is unsaved.
" %Y – Type of file in the buffer.
" %R – Displays the read-only flag.
" %b – Shows the ASCII/Unicode character under cursor.
" 0x%B – Shows the hexadecimal character under cursor.
" %l – Display the row number.
" %c – Display the column number.
" %p%% – Show the cursor percentage from the top of the file.
"

" Clear status line when vimrc is reloaded.
set statusline=
" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R
" Use a divider to separate the left side from the right side.
set statusline+=%=
" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
" Show the status on the second to last line.
set laststatus=2

" ABBREVIATIONS ------------------------------------------------------------ 

:ab bevs Bevan Sharp

" NETRW  ------------------------------------------------------------ 

let g:netrw_banner=0
let g:netrw_liststyle=3

