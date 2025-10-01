# Vim Notes

![Vim icon](./vim-icon.png?raw=true "A Little Vim Icon")

Following commands for when in command **ex** mode:

When in view **vi** mode the Escape key goes to **ex** mode. Various commands including `i`, `a`, `o`, `O` will automatically go to **vi** (insert) mode after the command is executed.

`ctrl` means to hold down the Control key in combination with pressing the following key.

`^` + means, in **ex** mode, to hold down alt/option and press the following character (eg. `^+g` means hold down alt/option and press `g`).

You can traverse back though he history of your `:,` `/` and `?` commands by typing `:,` `/` or `?` and pressing the up and down cursor keys. / and `?` share the same history.

In Mac OS Terminal the mouse scrolling function (scroll-wheel or equivalent) will move the cursor up and down lines.

## Useful Links

* [Vimrc Configuration Guide - How to Customize Your Vim Code Editor with Mappings, Vimscript, Status Line, and More](https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/)

* [vi Reference](http://www.ungerhu.com/jxh/vi.html)

* [My vi/vim cheatsheet](https://www.worldtimzone.com/res/vi.html)

* [50 Useful Vim Commands](https://vimtricks.com/p/50-useful-vim-commands/)

* [Coming Home to Vim / Steve Losh](https://stevelosh.com/blog/2010/09/coming-home-to-vim/#using-the-leader)

* [Display hidden characters - VimTricks](https://vimtricks.com/p/display-hidden-characters/)

* [Command line](https://learnbyexample.gitbooks.io/vim-reference/content/Command_Line_mode.html)

* [Working With Buffers in Vim: A Guide | Built In](https://builtin.com/articles/working-with-buffers-in-vim#:~:text=Vim%20buffers%20is%20an%20editing,use%20it%20to%20manage%20workflows.)

Leader commands `(,+cmd)` set in the **.vimrc** file. Here displayed in **bold**.

## Customising Vim

Vi/Vim can be customised in the ~/.vimrc file.

To put comments in this file start the line with single double-quotes (").

Here colours can be set for modes. eg.:

`autocmd InsertEnter * highlight Normal ctermfg=lightblue`

`autocmd InsertLeave * highlight Normal ctermfg=green`

And keyboard mapping overriding the default. eg. to set jj to fire the escape key in input mode:

`inoremap jj<esc>`

Or ; to replace the $ for moving the cursor to the end of the line in command mode:

`inoremap ; $`

To source (apply) changes to your .vimrc file after you’ve edited it:

`:source %`

Or:

`:source ~/.vimrc`

Information about the file (including full file name, line cursor is at how far down the document as a %):

`:file`

Information about the vim setting for the file based on its type:

`:filetype`

> “This line will automatically reload you .vimrc whenever you update it.”

[How to Do 90% of What Plugins Do (With Just Vim)](https://www.youtube.com/watch?v=XA2WjJbmmoM)

`autocmd! bufwritepost .vimrc source %`

## Operator-Pending Mappings

`:onoremap {command1} {command2}` set Operator-Pending {command1} to perform {command2}.  

With this:

`:onoremap b /return<cr>`

Make it so the follow actions:

`db` Delete body of the function - delete from cursor to line with return statement.

`:onoremap p i(` p as n operator-pending mapping will now act as `i(`.

So `dp` will `di(` Delete text inside brackets ().

Other examples of mappings for effecting next/last content in brackets () and braces:
`onoremap in( :<c-u>normal! f(vi(<cr>`
`onoremap il( :<c-u>normal! F(vi(<cr>`
`onoremap an( :<c-u>normal! f(va(<cr>`
`onoremap al( :<c-u>normal! F(va(<cr>`

`onoremap in{ :<c-u>normal! f{vi{<cr>`
`onoremap il{ :<c-u>normal! F{vi{<cr>`
`onoremap an{ :<c-u>normal! f{va{<cr>`
`onoremap al{ :<c-u>normal! F{va{<cr>`

## Insert Mode

`ctrl+t` Increment line

`ctrl+d` Decrement line

## Command Mode

`:w !sudo tee %` Write the file as 'super user'. Useful if the file doesn't
have write permissions (but will for the super user). May be prompted for your
password.

`: / <space>` Enter command mode.

`ctrl+c` Clear text.

`ctrl+r{register}` Paste from register to the command input. Eg. `ctrl+r0` for last yanked item.

`let @a="hello!"` Assign the `a` register to **"hello!"**.

`:echo @a` Echo out the register `a`.

`:echo @"` Echo the word just yanked. The `"` register is the "unnamed" register, which is where text you yank without specifying a destination will go.

`:echo @/` Echo the search pattern just used. This lets you programmatically read and modify the current search pattern.

`:let @/ = "{string}"` Write to the search register (`/`) with a `:let`.

`:execute "<command">` Execute the command in the string.

`:execute "write"` Execute the write just as if you had typed `:write<cr>`.

`:execute "normal! gg" Execute the normal command to move the cursor to the top of the document.

`normal!` doesn't recognise "special characters" like `<cr>`. There are ways around this but it is best to use `execute` with `normal!`.

More on `:execute` at: [More Operator-Pending Mappings / Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/chapters/16.html)

## Configuration

`:map {commands} {commands}` Map the key `{letter}` to a string of Vi/Vim `{commands}`

`:nunmap {commands}` Unmap the normal command mapping from `{letter}`

Information on configuration options: 

[How To Show or Hide Line Numbers In vi / vim Text Editor - nixCraft](https://www.cyberciti.biz/faq/vi-show-line-numbers/)

Note that :set can also be written as `:se`

`:options` see the configuration options.

Show the set options.

`:set` 

List all current vim settings

To see a list of everything that you have set so far in your vim config file or at runtime, type the following command at the : prompt:

`:set all` 

Prepend "no" to switch an option off. Eg.:

`:set noic`

Set a local setting (for buffer/file) command:

`:setlocal {command}`

Show what a custom command does (without executing it):

`:nmap {command}`

Eg. `:nmap <leader>s`

### Line numbers

Show line numbers:

`:set nu`

Hide line numbers:

`:set nu!`

Show relative line numbers:

`:set rnu`

Hide relative line numbers:

`:set rnu!`

Can have both regular line numbers and relative line numbers enabled at the same time.

Append the following line:

`:set number`

To disable and not set line number by default in vim, add the following in `~/.vimrc` file:

`:set nonumber`

### File types

Find out the file type of the open file:

`:set ft?`

### Smartcase

Make it so searches are 'smartcase'. This will automatically switch to a case-sensitive search if you use any capital letters:

`:set smartcase`
`:map!` Show all mapping

##Set syntax highlighting

`:syntax off`

`:syntax on`

## Test wrapping

[How to stop line breaking in vim](https://stackoverflow.com/questions/2280030/how-to-stop-line-breaking-in-vim)

To wrap lines visually, i.e. the line is still one line of text, but Vim
displays it on multiple lines:

`:set wrap`

To display long lines as just one line (i.e. you have to scroll horizontally to
see the entire line):

`:set nowrap`

By default this will wrap at the first character that won't fit in the window.
This means it will wrap in the middle of a word if that's where the window
boundary lies. To change it to wrap on word boundaries, you can also:

`:set linebreak`

This will cause wrap to only wrap at the characters in the break at setting,
which defaults to space, tab, and small set of punctuation characters.

`:set breatat= ^I!@*-+;:,./?`

### Spelling

Enable:
`:set spell`

Disable:
`:set nospell`

Toggle:
`:set spell!` *`<leader>S`*

`z=` Give spelling suggestions for word under cursor

`]s` Move cursor to next misspelt word

`[s` Move cursor to previous misspelt word

Opening files and effecting files with vim at the command line.

Open a file at particular location/line number - Jump to particular line number
from a shell prompt, enter:

`vi +linenumber file.c`

`vi +300 initlib.c`

 Jump to particular line that starts with a search term:

`vi +/searchTermHere file.c`

main or main function from a shell prompt, enter (note note shell escape done
with \):

`vi +/main initlib.c`

`vi +/main\( initlib.c`

`adduser(:`

`vi +/addUser\( initlib.c`

`vi +/addUser\(arg1\) initlib.c`

Take the concatenated files *.vim and pipe them to vim as the input:

`cat *.vim | vim -`

### Ex Mode

`Q` Enter **ex mode**.

`visual` to exit **ex mode**.

Not sure how useful **ex mode** is but you can enter something like:

`norm guu` then 'visual' (to exit) to make the text on the current line **ex mode** was called from all lower-case.

### Abbreviations

Set up in **.vimrc** to have available in insert mode:

`iabbrev teh the` Abbreviation to make **teh** **the**.

To cancel an abbreviation from applying (in visual mode) type `ctrl+v` at the
end of the word.

### Jump List

TODO

### Change List

Vim stores the last 100 changes in the change list.

[Vim Jump to Last Change - VimTricks](https://vimtricks.com/p/vim-jump-to-last-change/)

`:changes` Show position of last 100 changes.

`g;` Jump to the last change made (in the change list).

`g{number};` Jump to the `{number}` last change made (in the change list).

`g,` Jump to the next change made (in the change list).

`g{number},` Jump to the `{number}` next change made (in the change list).

### Tabs

Open two or more files in tabs:

`vim -p [filepath1] [filepath2] [filepath3]`

Open all files in a directory in tabs:

`vim -p *`

Open all files in a directory of a file type in tabs:

`vim -p *.{filetype}`

Note that tabs are also buffers in Vim so :buffers will list the tabs.

## Help

`f1` / `:help`

`:help` / `h` `{command}` View a help entry (eg. :help user-manual)

`<Ctrl-w Ctrl-w>` To jump from one window to another. Also works with splits.

`:q` Close help.

When entering in : commands ctrl+D will give a list of matching options; <TAB> to auto complete.

## File Browser - NetRW

`:Explore` / `:Ex`

`:Lex` NetRW explorer on the left (stays open on file open)

`:Lex!` NetRW explorer on the right

`:Sex` NetRW explorer on top (stays open on file open)

`:Sex!` NetRW explorer on the left (stays open on file open)

`%` Create new file

`D` Delete file

`s` Sort listing

`r` Reverse sorting order

`x` Special - opens the file in the web browser

`R` Move - rename the file

`p` Preview file - effectively open a new split

`I` Toggle banner visibility

`i` Cycle view types

`x` Open file in associated program (HTML in the web browser, images in Preview etc.)

`v` Open file in a vertical split

`o` Open file in a horizontal split

`<enter>` Toggle tree directories open/close in tree view

### Commands to save

`:wa` Save changes made to all the files opened

### Commands to exit

`:exit` / :e Exit

`:q` Quit

`:qa` Quit all files open in the buffer (splits and tabs)

`:wq` Write an quit (same as ZZ)

`:q!` Quit without saving any changes

`ZZ` Save and exit.

`ZQ` Exit without saving.

`:x` Close file

`:wall` / :wa write all files open in the buffer (splits and tabs)

`:write {filepath}` / `:w {filepath}` Write the buffer to the `{filepath}`. Still editing the original file.

`:save {filepath}` / `:sav {filepath}` Write the buffer to the `{filepath}` and switch to editing that file.

`:{number},{number}write {filepath}` / `:{number},{number}w {filepath}` Write the range to the `{filepath}`.

## Move

Move with the cursor keys or:

`h` Move cursor cursor

`{number}h` Move cursor left {number} characters

`j` Move cursor down

`{number}j` Move cursor down {number} characters

`k` Move cursor up

`{number}k` Move cursor up {number} characters

`l` Move cursor right

`{number}l` Move cursor right {number} characters

`:+{number}` Move cursor up {number} of lines

`:-{number}` Move cursor up {number} of lines

`b` Move to the start of the previous word (punctuation considered words).

`B` Move to the start of the previous word following white-space (no punctuation).

`w` Move to the start of the (punctuation considered words).

`W` Move to the start of the (no punctuation / spaces separate words).

`e` Move to the end of the next word (punctuation considered words).

`E` Move to the end of the next word following white-space (including punctuation).

`0` Move cursor to the start of the line.

`$` / ' Move cursor to the end of line.

`^` / - / ; First non-blank character of line.

`+` Move cursor to the first non-white-space character of the next line.

`*` Move cursor to the next occurrence of the word the cursor is over.

`#` Move cursor to the previous occurrence of the word the cursor is over.

`H` Move cursor to the top of the screen.

`yH` Yank from the first visible line to the cursor line (inclusive).

`M` Move cursor to the middle of the screen.

`L` Move cursor to the bottom of the screen.

`yL` Yank from the cursor line to the last visible line.

`{` Move cursor to the start of previous paragraph

`}` Move cursor to the start of previous paragraph

`(` Move cursor to the start of the previous sentence

`)` Move cursor to the start of the next sentence

`f{character}` Move cursor to the next <character> on the current line.

`F{character}` Move cursor to the previous <character> on the current line.

`ctrl+f` Forward one screen.

`ctrl+b` Back one screen.

`ctrl+d` Forward 1/2 screen.

`ctrl+u` Forward 1/2 screen.

`ctrl+e` Scroll screen up one line.

`ctrl+y` Scroll screen down one line.

`ctrl+g` Show file info and file status.

`{buffernumber}ctrl+g` Show file info and status with the {buffer} file's path.

###Global Command

`gg` / `go` / `[[` Move to the top of the file.

`G` / `]]` Move to the bottom of the file.

`<number>G` / `<number>gg` / `:<number>` Move to that line number (or the last line if the number is greater than the number of line in the file).

`ge` Move cursor back to last letter of the previous word.

`gE` Move cursor back to last letter of the previous whole word.

`gj` Move cursor down line for wrapped text.

`gJ` Join the following line with the current line with no space separation.

`gk` Down up line (useful for wrapped text).

`gh` Move cursor up line for wrapped text.

`ga` / :as Show details about the character under the cursor - eg. <“> 8220, Hex 201c, Octal 20034

`gi` Go to last place text was in insert mode.

`gv` Go to last place text was in visual select mode.

`gD` Goto Global Declaration of the variable under the cursor. Like gd but starts at line 1.

`g%` Repeat last substitution, but globally.

`gq` Auto indent line?

`gn` Go to next occurrence of last searched term (buffer /) switching to visual mode.

`gN` Go to previous occurrence of last searched term (buffer /) switching to visual mode.

`g0` Go to the start of the (wrapped) line.

`g$` Go to the end of the (wrapped) line.

`gi` Go to the last insertion location.

`gv` Reselect previous visual selection.

`gf` Open file path under cursor into a new buffer. Relative but if full path will follow that absolute path.

`g_` Go to the last non-whitespace character on the current line.

`gx` Open file/url under cursor - urls should open in the browser but, due to a bug in Vim 8.2 (which I have) it attempts to download the HTML as a file instead (which is not what I want.

`g;` Go to the last place of modification.

`g;` Go to the next place of modification.

`g+` Redo change.

`g-` Undo change.

`g&` Apply the last (one-line) substitution to the rest of the file.

`guu` Current line of text all lowercase.

`gUU` Current line of text all uppercase.

`g~~` Current line of text case-inverted.

`guw` Make the word after the cursor all lowercase.

`gUw` Make the word after the cursor all uppercase.

`{number}guw` Make {number} of words all uppercase.

`{number}gUw` Make {number} of words all lowercase.

`gUiw` Uppercase entire word.

`guiw` Lowercase entire word.

`g~iw` Toggle case entire word.

`gu$` Lowercase until the end of the line.

`gU$` Uppercase until the end of the line.

`g~$` Toggle case until the end of the line.

`gu0` Lowercase until the start of the line.

`gU0` Uppercase until the start of the line.

`g~0` Toggle case until the start of the line.

`gg=G` To auto-indent entire document.

`g<Home/End>` and `g<Up/Down>` do same thing as `g0/$` and `gk/j`

If trying to stay more in insert mode, there's a way to manually create and undo point (while still in insert mode): `Ctrl-gu`.

`:g/{term}` List the lines where the `{term}` is found. Can also use

`:g/{term}/p` but the `p` for print is the default.

`:v/{term}` / `:v/{term}/p` List the lines were `{term}` is not found.

`:g!` is equivalent to `:v` (and presumably `:v!` is the equivalent to `:g`)

`:g/{term}/d` Delete the lines where the `{term}` is found.

`:v/{term}/d` Delete the lines where the `{term}` is not found.

`:g/{term}/norm {commands}` Run the normal {commands} on any the lines where
`{term}` is found.

`:v/{term}/norm {commands}` Run the normal {commands} on any the lines where
`{term}` is not found.

`:g/^/m0` Effectively reverse the line order of the document.

`:g/^$/d` Delete all blank lines in the document.

`e` Go to the end of the word.

`: / **<space>** / **<enter>**` : for command - Default move cursor to the next character.

`% / **<tab>**` Jump between matching brackets under cursor.

`[{` When cursor is inside { and } go to the starting {.

`]}` When cursor is inside { and } go to the ending }.

`[(` When cursor is inside ( and ) go to the starting (.

`])` When cursor is inside ( and ) go to the ending ).

`[(` When cursor is inside ( and ) go to the starting (.

`])` When cursor is inside ( and ) go to the ending ).

For some reason `[[` and `]]` don't go to the starting / ending [ / ] when inside but to the start and end of the document. TODO: find out how?

< and > aren't (seemingly) considered matching brackets in Vim so `[<` and `]>` don't do anything. TODO: find out how?

`` `[ `` Jump to beginning of last yanked text.

`` `] `` Jump to end of last yanked text.

`dd` Delete current line (copy to unanemd register).

`dl` Delete letter.

`S` Substitute - Cut the current line to register and go into insert mode on that line?

`V` Start line visual selection at cursor

`v` Start visual selection at cursor

`dH` Delete from cursor to the top line of what is displayed visually.

`dL` Delete from cursor to the bottom line of what is displayed visually.

`ctrl+v` Start character visual selection at cursor

When entering an ex command and entering strings in double quotes ("") you can
enter special characters with a backslash escape `\` (like tab with `\t`). Another
method is to enter the special character as its key input (ie. tab key) by
proceeding it with `ctrl+v` (so `ctrl+v` `<tab>`. Vim will then insert its own special character
representative of the key entered.

`^v` Multi line visual selection 

`%` / `<tab>` - Move cursor to the closest (and then toggle) to the associated
brackets - ( ), { }, [ ] - on the current line.

`gd` Goto local Declaration.

> When the cursor is on a local variable, this command will jump to its
> declaration.  First Vim searches for the start of the current function, just
> like "[[".  If it is not found the search stops in line 1.  If it is found,
> Vim goes back until a blank line is found.  From this position Vim searches
> for the keyword under the cursor, like with "*", but lines that look like a
> comment are ignored (see 'comments' option).

> Note that this is not guaranteed to work, Vim does not really check the
> syntax, it only searches for a match with the keyword.  If included files
> also need to be searched use the commands listed in |include-search|.  After
> this command |n| searches forward for the next match (not backward).

## Command window

`q:` open command line window

[Vim Command Line Window - VimTricks](https://vimtricks.com/p/vim-command-line-window/)

## Special Characters

In insert mode enter `ctrl+k {character} {glyph}` to insert the character with
the glyph applied (can enter `{glyph}` before `{character}`.

Examples:

For "extraño", in insert mode type extra`ctrl+k n ?`, and n will become ñ. Will
still be insert mode and can keep typing. For this glyph you use **~** instead
of **?**.

For "ö", in insert mode type extra`ctrl+k o :`, and n will become ö.

For "ū", in insert mode type `ctrl+k u -`, and u will become ū.

https://www.reddit.com/r/vim/comments/12eo93m/how_to_insert_special_characters/

CHAR NAME               CHAR    MEANING
---------------------------------------------------
Exclamation mark        !       Grave
Apostrophe              '       Acute accent
Greater-Than sign       >       Circumflex accent
Question mark           ?       Tilde
Hyphen-Minus            -       Macron
Left parenthesis        (       Breve
Full stop               .       Dot above
Colon                   :       Diaeresis
Comma                   ,       Cedilla
Underline               _       Underline
Solidus                 /       Stroke
Quotation mark          "       Double acute accent
Semicolon               ;       Ogonek
Less-Than sign          <       Caron
Zero                    0       Ring above
Two                     2       Hook
Nine                    9       Horn

## Edit

`i` Insert at the cursor (before the current character).

`I` Insert at the start of the current line.

`a` Insert (append) at the cursor (after the current character).

`A` (Shift + a) Insert (append) at the end of the current line.

`o` (letter o) Insert new line under/after cursor.

`O` (capital letter O) Insert new line before cursor.

`.` Repeat last command.

`{number}.` Repeat last command {number} of times.

`u` Undo

`ctrl+r` Redo

`yy` / :y Yank (copy) line.

`{number}y` Yank (copy) multiple {number} lines.

`yw` / yiw Yank (copy) the word under the cursor. 

`y$` / `y'` / `Y` Yank (copy) the from under the cursor to the end of the line.

`"{character}yy` Yank the current line to register {character}.

`"{capitalcharacter}yy` Append yank the current line to register {capitalcharacter}. {capitalcharacter} being {character} in upper-case.

`yt{character}` Yank from the cursor to the next {character} on the current line.

`y{number}w` Copy the {number} of words.

`yip` Yank inside paragraph.

`yap` Yank around paragraph.

`x` Delete (remove as copy) character the under the cursor.

`{number}x` 'Delete' (remove as copy) {number} of characters the under and right of the cursor.

`X` Delete (remove as copy) charactet left of the cursor.

`{number}X` Delete (actually copy) {number} of characters left of the cursor.

`c$` / c' Cut (remove and go to insert mode) from the cursor to the end of the current line.

`cw` Cut (remove and go to insert mode) to the end of word.

`ciw` Cut (remove and go to insert mode) word cursor is inside of?

`cl` Cut (remove and go to insert mode) letter.

`cc` / `S` Delete line at cursor and substitute text.

`s` Delete character at cursor and subsitute text and enter insert mode.

`S` Indent cursor to document indentation.

`c/{pattern}` From the cursor to the first matched pattern change (cut) the text and go into insert mode.

`d/{pattern}` From the cursor to the first matched pattern delete the text.

`c?{pattern}` From the cursor to the first matched pattern change (cut) the text and go into insert mode.

`d?{pattern}` From the cursor to the first matched pattern delete the text.

`dd` Delete line (stay in normal mode).

`{number}dd` Delete a number of lines under cursor (where {number} is the number of lines starting).

`dw` Delete from cursor to the end of the word.

`diw` Delete inside word (including following white-space).

`d{number}b / {number}db` Delete multiple {number} of previous words.

`d{number}w / {number}dw` Delete multiple {number} of following words.

`d{number}j` Delete multiple lines {number} after the current line

`d{number}k` Delete multiple lines {number} above the current line

`d{number}h` Delete multiple {number} of previous characters on the current line

`d{number}l` Delete multiple {number} of following characters on the current line

`dt{character}` Delete from cursor to before next found character

`dT{character}` Delete from cursor to after previous character

`df{character}` Delete from cursor to including next found character

`dF{character}` Delete from cursor to including previous found character

`d$` / D / d' Delete from cursor to the end of the line

`daw` Delete around word.

`diw` Delete inside word.

`das` Delete around sentence.

`dis` Delete inside sentence.

`ciw` Cut inner word and go into insert mode

`cap` Cut around paragraph

`cit` Cut content between matching tags

`cat` Cut content around matching tags

`di"` Delete inside " marks

`da"` Delete around " marks

`dit` Delete inside matching tags

`dat` Delete arount matching tags

`dip` Delete inside paragraph

`dap` Delete around paragraph

`di(` / dib Delete inside ()

`da(` / dab Delete around ()

`di[` Delete inside []

`da[` Delete around []

`di{` / di} Delete inside {}

`da{` / da} Delete around {}

`di<` / di< Delete inside <>

`da>` / di> Delete around <>

`dgg` Delete from cursor to start of the file

`dG` Delete from cursor to end of file

`vas` Visual select around the sentence. 

`vis` Visual select in the sentence. 

`va(` / vib Visual select around ()

`vi(` / vib Visual select inside ()

`va{` Visual select around {}

`vi{` Visual select inside {}

`va[` Visual select around []

`vi[` Visual select inside []

`va"` Visual select around ""

`vi"` Visual select inside ""

`va"` Visual select around ''

`vi"` Visual select inside ''

`viw` Visual select word under the cursor

`p` Paste under (after) the cursor 

`P` Paste over (before) the cursor

`"{character}p` Paste from the register {character} after the cursor

`"{character}P` Paste from the register {character} before the cursor

`"_dd` Delete line but NOT put into a register (not remembered but sent to the "Black hole").

`"_dG` Delete from current line to the end of the document but NOT put into a
register (not remembered but sent to the "Black hole").

`r{character}` Replace {character}

`R{characters}` Replace the text where the cursor is at with {characters} -
Each character you enter will replace the character the cursor is over moving
onto the next one - Press `<esc>` to cancel out of this

`J` Join current and next line separated with a space

`~` Change the case of the letter under the cursor (inclusive of the current line)

`>>` Indent current line by one increment

`<<` Decrement current line by one increment

`{number}>>` Increment current and following {number} (inclusive) lines

`{number}<<` Decrement current and following {number} (inclusive) lines

`>>{number}j` Increment current and following {number} (inclusive) lines

`<<{number}j` Decrement current and following {number} (inclusive) lines

`:,+{number}>` Indent from the cursor to the +{number} by one indentation.

`:,+{number}>>` Indent from the cursor to the +{number} by two indentations.

`:{number},+{number}>` Indent from the line {number} to the `+{number}` by one indentation.

`.!{terminalcommand}` Insert at the cursor the result of the terminal `{termialcommand}`. 

Eg.

`.!whoami` Insert at the cursor the result of the Terminal command **whoami**.

`.!date` Insert at the cursor the  result of the Terminal command **date**.

`:.;+{linenumber}>` Indent range from current line to relative linenumber

`:.;+{linenumber}<` Decrement range from current line to relative linenumber

`==` Set indentation to logical surrounding indentation

`{number}==` Set indentation to logical surrounding indentation for the current and following {number} (inclusive) lines

`ctrl+o` Move cursor to previous place.

`ctrl+i` Move cursor to next place.

`gi` Go to the last insertion location.

`gv` Reselect previous visual selection.

`gf` Open file path under cursor into a new buffer.

`g_` Go to the last non-white-space character on the current line.

`gg=G` To auto-indent entire document.

`guw` Make the word after the cursor all uppercase.

`gUw` Make the word after the cursor all lowercase.

`g_` Move the cursor to the last non-blank character in the line.

`{number}guw` Make {number} of words all uppercase.

`{number}gUw` Make {number} of words all lowercase.

`gJ` Join following line without a space (continuous join).

`gx` Open file/url under cursor - urls should open in the browser but, due to a bug in Vim 8.2 (which I have) it attempts to download the HTML as a file instead (which is not what I want.

`cgn` Cut (go into insert mode), from visual mode, the next matched search term.

`cgN` Cut (go into insert mode), from visual mode, the last matched search term.

`cit` Jump into HTML tag.

`vit` Visual select in html tag

`xp` Cut then paste letter - effectively transpose the letter under the cursor with the following letter - repeating this can move the initial character further along in the text when repeated

`{number}i{characters}<Esc>` Repeat the `{characters}` `{number}` of times on the one line.

`:{number},{number}d` Delete lines by range of numbers (y instead of d to yank?).

Delete lines which include the {regexpattern}:

`:g/{regexpattern}/d`

Substitute ‘me’ to ‘you’ only on the lines that have the {regexpattern}:

`:g/{regexpattern}/s/me/you`

Append text on the current line via the command area (. on a new line after
{enter text} to finish and bring the text to the file:

`:g/{regexpattern}/t$` Copy all lines that start with `{regexpattern}` to the end of the file.

`:g/{regexpattern}/m$` Move all lines that start with `{regexpattern}` to the end of the file.

```
:a
{enter text}
...
{enter text}
.
```

As above but at the start of the file:

:0a

As above but at the end of the file:

:$a

As above but at a specific line of the file:

:{linenumber}a

Insert text on the current line via the command area (. on a new line after {enter text} to finish and bring the text to the file):

```
:i
{enter text}
...
{enter text}
.
```

As above but at the start of the file:

`:1i`

As above but at a specific line of the file:

`:{linenumber}i`

Change text on the current line via the command area (. on a new line after {enter text} to finish and bring the text to the file):

```
:c
{enter text}
...
{enter text}
.
```

```
:{startrange};{endrange}c
{enter text}
...
{enter text}
.
```

[ve] Virtual editing means that the cursor can be positioned where there is no
actual character. This can be halfway into a tab or beyond the end of the
line. Useful for selecting a rectangle in Visual mode and editing a table.

`set virtualedit=all` Allow virtual editing in all modes

### Registers

`:reg` / `:registers` to view the registers.

`"0` is the last yanked text so if the unnamed register `""` has the last deleted
text `"0` will have a record of the last yanked content to use.

Copy current line to the system clipboard:
`:y+`

Copy all text to the system clipboard:
`:%y+`

Explanation:

* % to refer the next command to work on all the lines

* y to yank those lines

* + to copy to the system clipboard

Copy visual select lines to the system clipboard

V and select lines

:'<,'>y+

The '<,'> is entered in for you as representative of the visual line select, so
y, + and enter will copy the selected range into the system clipboard.

### History

`:history` / `:history c` / `:history :` See the history of commands.

`:history i` See the history of input.

`:history e` See the history of expressions.

`:history /` See the history of searches.

`:history d` See the history of debug.

### Numbers 

`{number}%` Move the cursor to the {number} % place in the file.

`ctrl+a` Increment/increase the number under the cursor by 1 - hold this combination to more rapidly increase the number

`{number}ctrl+a` Increase/decrease the number under the control by {number}

`ctrl+x` Decrement the number the cursor is over by one - hold this combination to more rapidly increase the number

`{number}ctrl+x` Decrement the number under the control by {number}

Note with the above the cursor will jump to the next number on the line the cursor is on if not over a number.

`"%p` Insert file name at cursor

## Autocomplete

In insert mode.

`ctrl+n` Autocomplete (first) word being entered and move to next if more than 1.

`ctrl+p` Autocomplete (last) word being entered and move to previous if more than 1.

Precede these with ctrl+n to scope to just this file.

`ctrl+e` Cancel autocomplete.

`ctrl+y` Accept autocomplete option highlighted.

`ctrl+xctrl+f` Autocomplete to directory names and filenames in the path (where path is set in the .vimrc). If no preceeding text will list all directory and filenames.

Autocomplete from the dictionary:

`ctrl+xctrl+k` then `ctrl+n` and `ctrl+p` to change autocompleted match.

### Screen Manipulation

`:.=` Gives the line number the cursor is at.

`:=` Gives the total number of lines in the file.

`zz` Position screen with cursor in the middle.

`zt` Position screen with cursor at the top.

`zb` Position screen with cursor at the bottom.

`z.` Position screen with cursor in the middle and start of the line.

`z<Enter>` Position screen with cursor at the top and start of the line.

`z-` Position screen with cursor at the bottom and start of the line.

`ctrl+y` / `ctrl+e` Copy text from same column in the row above.

`ctrl+u` Moves cursor & screen up half of a page.

`ctrl+d` Moves cursor & screen down half of a page.

`ctrl+b` Moves screen up one page, cursor to last line.

`ctrl+f` Moves screen down one page, cursor to first line.

`ctrl+y` and ctrl+e only change the cursor position if it would be moved off
screen.

`ctrl+u` Undo in insert mode.`

`ctrl+r` Redo last undo.

`ctrl+g` Gives the name of the file, the line number the cursor is currently at
and the total number lines in the file, the percentage of how far down the
document the cursor is and the column the cursor is at. Get cursor position
info like current line number, column number and total number of lines. This
info is displayed at the bottom of the screen.

`ctrl+o{normalcommand}` Enter a normal command in insert mode.

`Ctrl-w` Delete a word in insert mode. Doesn't put the deletion into the unnamed buffer.

`ctrl+i` Delete from the cursor to the start of the line in insert mode. 

`:history View the history of commands`

Execute Terminal Commands

`:!{command}`

Eg. List files in the current directory:

`:!ls`

## Find and Replace

Links about find + replace: 

* [Searching and Replacing in vi](http://www.linfo.org/vi/search.html)

* [Search and replace | Vim Tips Wiki | Fandom](https://vim.fandom.com/wiki/Search_and_replace)

* [Regular Expressions &#xB7; Vim Reference](https://learnbyexample.gitbooks.io/vim-reference/content/Regular_Expressions.html)

* [Inspect Character Under Cursor in Vim - VimTricks](https://vimtricks.com/p/inspect-character-under-cursor-in-vim/) (replace unicode / special characters) 

[Search and replace | Vim Tips Wiki | Fandom](https://vim.fandom.com/wiki/Search_and_replace#:~:text=The%20%3Asubstitute%20command%20searches%20for,replace%20it%20with%20'bar'.)

`f{character}` - next instance of {character} from cursor?

`F{character}` - previous instance of {character} from cursor?

`r{character}` - Replace the character under the cursor with {character}.

Find the next instance of the text (pattern) (cases sensitive unless configured otherwise):

`/{pattern}`

Find the previous instance of the text (pattern) (cases sensitive unless configured otherwise):

`?{pattern}`

Find the next instance of the text (pattern) (cases sensitive unless configured otherwise):

`/\c{pattern}`

`n` Find the next instance of the searched pattern.

`N (Shift + n)` Find the previous instance of the searched pattern.

`&` Repeat last substitution on current line.

Use a `\c` to do a case-insensitive search or \C a case sensitive search (default) (eg. /search\c or /\csearch will search for 'search', 'Search', 'SEARCH' or 'searcH'; /\CSearch will only search for 'Search'). 

Find and replace on the current line  (. is not required to indicate the current line but is here to demonstrate its use):

`:s/{pattern}/{replace}/{flags}`

`:.s/{pattern}/{replace}/{flags}`

Find and replace one instance of text (pattern) in the whole file first instance:

`:%s/{pattern}/{replace}/{flags}`

Substitute instances of text {pattern} with {replace} from {linestart} to {linend}:

`:{linestart},{lineend}s/{pattern}/{replace}/{flags}`

`:{linestart},+{relativelinenumerdown}s/{pattern}/{replace}/{flags}`

`:{linestart},-{relativelinenumerup}s/{pattern}/{replace}/{flags}`

Eg.:

`:4s,10s/yes/no`

Can use either . or omit for the current line when searching and replacing a range - eg.:

`:,10s/yes/no`

`:.,10s/yes/no`

Use a relative range for search and replace with - and + -eg. (with - will asked to confirm):

`:.,+34s/yes/no`

`:,-14s/yes/no`

Search and replace from the first line of the file to the current line:

`:1,.$s/yes/no`

`:1,$s/yes/no`

Search and replace from the current line to the end of the file:

`:.,$s/yes/no`

`:,$s/yes/no`

Search and replace the first instance of {pattern} with {replace} on the current line:

`:.s/{pattern}/{replace}`

Current line case insensitive search first instance:

`:s/pattern/replace/i`

Capital (I) for case sensitive. 

Current line all instances:

`:s/pattern/replace/g`

Whole file all instances:

`:%s/pattern/replace/g`

Current line first instance confirm change:

`:s/pattern/replace/c`

Whole file first instances confirm change:

`:%s/pattern/replace/c`

Use flag n to count - not replace- occurrences:

`:%s/pattern/replace/n`

Whole file all instances, confirm change and case insensitive:

`:%s/pattern/replace/gci`

With /c you will go into ‘confirmation mode’. In this mode, you’ll be presented with the following option: replace with 
UU (y/n/a/q/l/^E/^Y)?

The choices:

`y` YES, replace this match.

`n` NO, don’t replace this match and move to the next one.

`a` Replace ALL matches.

`q` QUIT without replacing any match.

`l` Replace this match and quit as if it was the LAST match.

`^E` Scroll the screen up.

`^Y` Scroll the screen down.

Search examples

`/Hello` Matches if the line contains the value Hello

`/^TEST$` Matches if the line contains TEST by itself

`/^[a-zA-Z]` Matches if the line starts with any letter

`/^[a-z].*` Matches if the first character of the line is a-z and there is at least one more of any character following it

`/2134$` Matches if line ends with 2134

`/\(21|35\)` Matches is the line contains 21 or 35 -  Note the use of ( ) with the pipe symbol to specify the 'or' condition

`/[0-9]*` Matches if there are zero or more numbers in the line

`/^[^#]` Matches if the first character is not a # in the line

Special characters to escape

`\s` for white-space character

`\t` for tab character

`\w` for letter character

### Search Pattern Modifiers

[Regular Expressions · Vim Reference](https://learnbyexample.gitbooks.io/vim-reference/content/Regular_Expressions.html#search-pattern-modifiers)

`\v` helps to avoid \ for pattern qualifiers, grouping pattern, etc.

`/\vc{5}` Match exactly 'ccccc'.

`/\vabc+` Match 'abc' or 'abccc' but not 'ab'.

`/\vabc?` Match 'ab' or 'abc' but not 'abcc'.

`/\v<his>` Match whole word 'his', not 'this' or 'history'.

`/\vmin|max` Match 'min' or 'max'.

`/\vhand(y|ful)` Match 'handy' or 'handful'.

`/\v(\a)\1` Match repeated alphabets.

`s/\v(\d+) \v(\d+)/\2 \1` Swap two numbers separated by space.

### More Advanced Search Pattern Modifiers

`:%s/- .*\.\@<!$/&.` Find lines starting with **- ** but not ending with **.** and append a **.** to those lines.

`\.@<!$` means to not have the line end in **.**.

`&` in the replace part is a back reference to the matched text.

Alternatively use the `g` and `v` commands with the following (`g` global and `v` opposite, or inverse, of global):

`g/- /v/\./norm A.`

### Search Settings

`:set ic` Set search ingnore case.

`:set hls` Set highlight search.

`:set nohlsearch` Unset highlight search.

`:set is` (incsearch) Show partial matches for a search phrase.

Notes

* Regular expressions are case sensitive.

* Regular expressions are to be used where pattern is specified.

* To enter unicode characters into a command (eg. find and replace) enter
  `ctrl+vu`, the unicode value, `<enter>`.

Can back-reference the whole match with backslash zero - eg. (to globally
change ‘apple’ to ‘apples’) :

`:%s/apple/\0s/g`

Use back references to refer to (escaped) bracketed sections of text - eg (to
globally change ‘apples’ to ‘allies’):

`:%s/\(a\)pp\(les\)/\1lli\2/g`

With * or # to search for next/previous occurrence of a word under the cursor
that match becomes the {pattern}, or the result of a search (/ or ?),  you can
use to substitute with the following ({pattern} is implied from the previous
match/search):

`:%s//{replace}`

`:/{term}/m$` Move the next found line with {term} to the very end of the buffer.

`:/{term}/m0` Move the next found line with {term} to the very start of the buffer.

`:/{term}/m-1` Move the from the next found line with the {term} to the line
above where the cursor is.

`:/{term}/+1m-1` Move the line one down from the next found line with the
{term} to the line above where the cursor is.

`:/{term}/d` Delete the next found line with {term}.

`.*` is greedy. To match the minimum length match possible use `.\{-}` which will
match the fewest characters possible to make a match.

### Add command

Add a block of content, including line breaks, as a command:

`:a <enter>`

Command space will let you add free text. Enter to go to a new line. When done
press escape to add the new content to where the cursor is in the document.

Go to line number command

Command to go to a line number:

`:<number>`

## Terminal 

`:terminal` / `:term` Open the terminal into a new split/buffer.

`exit` Close terminal.

`Ctrl-w N` / `Ctrl-\ Ctrl-n` To enter normal mode in the terminal.

`i` to go back to the regular terminal (like reverting back to insert mode).


## Miscellaneous 

Assign a value (here string) to register {character}:

`:let @{character} = "something"`

Output register {character}:

`:echo @{character} `

Output the last search pattern:

`:echo @/`

See the vim files used to customise vim:

`:scriptnames`

Run Terminal command to add the current date and time:

`:r!date `

Can also use:

`:.!date`

`:.` reads in from `!{command}`.

Execute a line, or lines, from the file as a Terminal command:

`:.!sh`

So if the line of the file has **pwd** running `:.!sh` will replace the **pwd**
with the working directory of the buffer (file).

Can sort multiple lines with the Terminal sort command; start selecting
multiples lines with Visual mode then use the command (< and > added in
with Visual select):

`'<,'>sort` Sort selected lines alphabetically. 

`'<,'>sort` Sort selected lines alphabetically and remove duplicates. 

`'<,'>sort n` Sort selected lines by number. 

`'<,'>sort n u` Sort selected lines by number and remove duplicates.

`'<,'>.!sort`

`'<,'>!sort` This will also work here.

`'<,'>.!sort -n` Use this for sorting lines starting with numbers.

`'<,'>.!sort -nu` Sort selected lines by number and remove duplicates.

`'<,'>.!sort -r` Use this for sorting lines at random.

Copy from one part of the document to where the cursor is:

`:{relativelinenumberstart},{relativelinenumberend}co.`

Eg.

`:-16,-14co.`

Move text at cursor and next line  to the end of the document (can omit the .;
the 1 can also be omitted here):
`:.,+1m$`
`:,+m$`

Copy text at cursor and the next 2 lines to the start of the document (can omit
the .):

`:.,+2t0`

To insert a repeat of characters for a certain amount:

`{number}i{character/s}{esc}` In normal mode.

`ctrl+o{number}i{character/s}{esc}` In insert mode.

## Visual Mode 

Enter (and exit) visual mode:

`v`

Enter (and exit) block visual mode:

`Shift+v`

Enter (and exit) visual block mode (visual block mode allows for editing
multiple lines at the same cursor point):

`Ctrl+v`

In visual block mode move to select from the current cursor point with h, j, k
and l and use commands like x, c, r (for replace) etc to effect that selection.
To insert text across multiple lines with the visual block mode, move to select
the multiple lines and characters then press Shift + i. Enter the text for the
current line with the cursor then press <esc> to apply across multiple lines.
Cannot delete with the insert mode.

From normal mode:

`vaw` Select a word.

v{number}word Select {number} of words.

`vip` Select a paragraph inside.

`vap` Select a paragraph includes.

`vib` Select a () block inside.

`vab` Select a () block includes.

`vi`{ Select a {} block inside.

`va`{ Select a {} block includes.

`vi`[ Select a [] block inside.

`va`[ Select a [] block includes.

`v{number}>` Indent line by {number}.

`v{number}<` Decrement line by {number}.

In visual select mode:

`d` Deletes the visually selected text.

`o` Move to other end of marked area.

`O` Move to other side of the line of the marked area.

`w` Select next word.

`r{character}` Replace selected characters with the new character.

`{number}word` Select {number} of words.

`\`` Toggle case.

`ib` Select a () block inside.

`ab` Select a () block includes.

`i`{ Select a {} block inside.

`a`{ Select a {} block includes.

`i`[ Select a [] block inside.

`a`[ Select a [] block includes.

`u` Change the selected text to lowercase.

`U` Change the selected text to uppercase.

`aw` Mark a word?

`v{selection}{character}y` Yank the selected text into register {character}.

`v{selection}{character}Y` Yank the selected lines into register {character}.

`:w` {filename} Write the visually selected text to the filename TEST.

`{ctrl}+v` To enter visual select mode, move vertically to select multiple lines and enter either I or A to insert or append (respectively) entered changes over multiple lines when exiting insert mode.

`at` Expand visual selection (of tags) to around parent tags.

`it` Expand visual selection (of tags) to inside parent tags.

There doesn't appear to be a way (an equivalent built-in way) to Contract the visual selection of tags so as to shrink the selection to inside the selected tags.

### Paste from the register

Useful to paste from a previous change (ie, cut, yank).

`:registers` / `:reg` View the registry (list of prior changes to the doc/buffer).

`:reg {namedregisters}` View the registers of the {namedregisters} only.

`"ayy` Copy the line to register a.

`"bd$` Delete from cursor to the end of the line and put that into register b.

`"cd0` Delete from cursor to the start of the line and put that into register c.

`"ap` Paste from register `a`.

`"+yy` Copy the current line to the system clipboard.

`"+p` Paste from the system clipboard.

Note the "{character} against the text you want to paste

In normal mode paste from the register:

`"{character}p Paste from register {character} after cursor.`

`"{character}P Paste from register {character} before cursor. `

With a list like:

1. First
1. Second
1. Third
1. Forth
1. Fifth
1. Sixth
1. Seventh

Select the second to the last line in visual mode and enter:

`g ctrl+a`

This will increment the list giving:

1. First
2. Second
3. Third
4. Forth
5. Fifth
6. Sixth
7. Seventh

Numbers do not have to be the first character, this also works with numbers
further in the line like the following:

arr[0] = 'foo';
arr[0] = 'bar';
arr[0] = 'zar';
arr[0] = 'gallah';

Becomes:

arr[1] = 'foo';
arr[2] = 'bar';
arr[3] = 'zar';
arr[4] = 'gallah';

Instead of the ctrl+v, move lines in visual mode, I, edit in insert mode,
then exit to apply those changes to multiple lines you can use, from any
multi-line visual selection, the following to achieve the same result:

`'<,'>norm I"` From visual mode insert " at the start of each line.

`'<,'>norm A"` From visual mode append " to the end of each line.

### Math Calculations in Vim

[Vim Calculator - VimTricks](https://vimtricks.com/p/vim-calculator/)

Mathematical calculations can be done when in insert mode. For instance to 
get the result of a math equation:
Doesn't seem to provide decimal values on division.

`ctrl+r={math equation}<enter>`

In normal mode use:

`:put={math equation}<enter>`

An example of a math function here is:

`:put=range(1,10)`

This will give 1 to 10 on seperate lines.

If you have a math equation on a line you can store that in the register with:

`“{letter}yy`

Then in insert mode:

`ctrl+r=ctrl+r{letter}<enter>`

Will give the result of that equation. You may have to edit the equation before
hitting enter as unwanted character(s) may appear.

With the equation in the resister in vim, go to insert mode and enter `ctrl+r =`
then `ctrl+r "` to paste the yanked text and press `<enter>`

Edit multiple contiguous lines

To edit multiple contiguous lines at the same column (ie. for commenting
multiple lines), from the starting place go into visual mode with `ctrl + v` (not
V line mode), move up/down to the ending place, go into insert mode with I,
enter the character(s) and escape out. The multiple lines will now have the
same character in the same place. Can also use this to change case with ~ or
delete with d/x.

Substitution across different ranges:

`:for range in split('6,10 14,18')| exe range 's/<search_string>/<replace_string>/g' | endfor`


Substitution in marked ranges:

`:s'a,'b/before/after/gci`

The above will search from marked range starting point a going to marked point b and confirm global replacement of ‘before’ with ‘after’.

## Code folding

[Vim Code Folding - VimTricks](https://vimtricks.com/p/vim-code-folding/)

For Lua and python the following fold method is most suitable:

`:set foldmethod=indent`

Vim Folding Commands

The most important Vim code folding commands:

`za` / ,z Toggles the current fold open or closed – the most useful command to know of all of these.

`zA` Same as za except it toggles all folds beneath as well. Since folds can be nested (such as with indent folding), this will toggle the state of all the folds underneath of it, not just the current fold.

`zc` Close the current fold under the cursor.

`zC` Same as above, but closes folds nested underneath as well.

`zo` Open the current fold under the cursor.

`zO` Same as above, but opens folds nested underneath as well.

`zR` Open all folds.

`zM` Close all folds.

## Jump list

[Vim Jump List - VimTricks](https://vimtricks.com/p/vim-jump-list/)

When making certain movements, such as jumping to line 42 with 42G, Vim will save it as a “jump” in the jump list. 

`:jumps` You can list jumps

To move backwards through the jump list to an older jump use `ctrl+o`.

To move to a newer jump use `ctrl+i`. You can also press <tab>.

`{number}ctrl+i` Jump to {number} in control list

Vim will store up to 100 locations in your jump list. If you ever want to clear them all out, run the command `:clearjumps` and your jumplist history will be wiped clean.
For more info, check out `:help jumplist` in Vim. Also be sure to read about the Vim change list which is similar to but different from the Vim jump list.

`:jumps` / `:jump` / `:ju` See the jump list.

`:clearjumps` Clear the jump list.

`{number}Ctrl-o` Go back one/`{number}` place(s) in the jump list.

`{number}Ctrl-i` Go to the one/`{number}` place(s) in the jump list.

## Jump (Change) list

[Vim Jump to Last Change - VimTricks](https://vimtricks.com/p/vim-jump-to-last-change/)

Vim keeps track of the position of every undo-able change and makes the last 100 available to you when you call :changes.

`:changes` – Show position of last 100 changes

`g;` Go to the last change made.

`g,` – Go forward to through the next change made.

The change list is different to jump list as it tracks undoable changes. 

## Multiple Files and Split Windows

Open Multiple files

`vi [filename1 filename2 etc.]`

Open multiple files in horizontal splits (- lowercase o):

`vi  -o  [filename1 filename2 etc.]`

`vi  -o  *.js`

Open multiple files in vertical splits (- capital o):

`vi  -O  [filename1 filename2 etc.]`

`vi  -O  *.js`

More on split windows in Vim:

* [Vim split to a specific size - VimTricks](https://vimtricks.com/p/splitting-to-a-specific-size/)

* [Resize splits - VimTricks](https://vimtricks.com/p/resize-splits/)

* [Vim Move Split - VimTricks](https://vimtricks.com/p/vim-move-split/)

* https://www.baeldung.com/linux/vim-windows#:~:text=The%20ctrl%2Bw%20%2Bs%20and,use%20ctrl%2Bw%20%2Bn.

`:edit` / `:e` {filepath} Open a file (to the buffer) to edit

`:edit!` / `:e!` Clear edits to the buffer.

`:read` / `:r` `{file path}` Read in a copy of the specified file `{file path}`
into the buffer and past to the cursor location, effectively writing that
file into the document where the cursor is located. Can use absolute or
relative (to the current file) paths.

`:0read` / `:0r` `{file path}` Read in a copy of the specified file `{file path}`
into the top of the buffer writing the contents there.

`:r!{command}` Read in the results of the Terminal command (eg. :r!ls to read in the current directory listing or :r!date to read in the current date and time).

Eg. `r!curl {url}` will read in the HTML from the `{url}`

## Buffers

Following to clear the register a (I found the spaces around the = aren’t necessary):
`:let @a = ''` / `:let @a=''` / `:let @9=''`

Enter mathematical result when in insert mode (using the "= expression register):
`:={expression}<enter><p>` (command mode)
`Ctrl-r={expression}<enter>` (insert mode)

Re-enter last expression register result (what is in "= register):
`Ctrl-r=<enter>` (insert mode)

When running a search with `:%s/` etc. `Ctrl-r/` will bring in the search term used in the `"/` search register.

`:buffers` / `:ls` View buffers listing.

`Ctrl + Shift + 6` (`Ctrl-^`) Switch between previous and current buffer into view (normal mode).

`:b {buffername}` Switch to the buffer by name (or part of the name).

`:%bd` Close all buffers.

`:bfirst` Go to first buffer.

`:blast` Go to the last buffer. 

`:bprev` (of `:bp`) <leader>[ Go to previous buffer.

`:bnext` (or `:bn`) <leader>] Go to next buffer.

`:{number}b` / `:b{number}` / :bu{number} Go to the buffer by number.

`:bd` / `:bdelete` **<leader>C** Delete a buffer (close a file).

`:bd {number}` / `:bdelete {number}` Delete the buffer by number.

`:{number}bd` Delete (close) buffer {number} (current buffer if no number}.

`:{number}bw` Wipe out buffer (like `bd` but more severe) {number} (current buffer if no number}.

`:bufdo` Run an operation across all files open in the buffers.

Eg. to make a global change across all buffers (Update saves each buffer file after substitution):

`:bufdo %s/pancake/waffle/g | update`

In command : mode Ctrl-d will provide contextual suggestions for the command. For instance, the following will list the buffers (the space here is important otherwise the suggestions will be commands that start with b):

`:b <Ctrl-d>`

`:b#` Go to the previous buffer.


## windows

`:args` List the args - the one in [] is the current args file

`:args {filepath ...}` Overwrite the args list with the provided files

`:arga {filepath}` Add the file to the args list

`:argd {file}` Delete the file in the args list

`:next` Go to next in the args

`:prev` Go to previous in the args

`:first` Go to first in the args 

`:last` Go to last in the args

`:argdo` Run an operation across all files in the args

Eg. to make a global change across all files in the args (Update saves each buffer file after substitution):

`:argdo %s/method_a/method/b/g | update` 

`:split` / `:sp` Open a horizontal split with the current buffer.

`:{number}split` Open a horizontal split of {number} characters high (including ui elements).

`:vsplit` / `:vs` Open a vertical split with the current buffer.

`:vnew` Open a vertical split with a new buffer.

`:{number}vsplit` Open a vertical split of {number} characters wide (including ui elements).

`:sp filename` Open a file in a new buffer and split window.

`:{number}sp` Open a file in a new buffer and split window {number} characters wide (including ui elements).

`:next` Navigate to next open file.

`:previous` Navigate to previous open file.


Second key can have Ctrl held down too:


`Ctrl-w s` View buffer in a horizontal split

`Ctrl-w v` View buffer in a vertical split.

`Ctrl-w w` - switch between windows.

`Ctrl-w q` - Close buffer/window or close Vim.

`Ctrl-w w` Cycle split focus.

`Ctrl-w h` Focus buffer to the left.

`Ctrl-w j` Focus lower buffer.

`Ctrl-w k` Focus above buffer.

`Ctrl-w l` Focus buffer to the right.

`Ctrl-w H` Moves the active split to a full-height split across the left.

`ctrl-w J` Moves the active split to a full-width split across the bottom.

`ctrl-w K` Moves the active split to a full-width split across the top.

`Ctrl-w L` Moves the active split to a full-height split across the right.

`Ctrl-w R` Swap position of the splits.

`Ctrl-w =` Evenly size the splits.

`Ctrl-w |` Max width of the current split.

`Ctrl-w _` Max hight of the current split.

`{number}Ctrl-w <` Decrease width of split by {number}.

`{number}Ctrl-w >` Increase width of split by {number}.

`Ctrl-e` Scroll the buffer down one line. 

`Ctrl-y` Scroll the buffer up one line. 

`:only` / `:on` Close the other buffers/tabs leaving the current one only open.

`:ctrl+f` Open up, and edit, the : command history. Can use vim commands to
navigate and edit here. Enter to fire the command the cursor is under. Enter on
the default blank or `ctrl+c` to escape. This can be a preferrable option over
using cursor up and down keys to navigate the : commands history.

`/ ctrl+f` or `/ ctrl+f` Open up, and edit, the / or ? command history. Can
use vim commands to navigate and edit here. Enter to fire the find the cursor
is under. Enter on the default blank or `ctrl+c` to escape. This can be a
preferrable option over using cursor up and down keys to navigate the / or ?
commands history.

Assign local buffer hello the sting "world":

`:let b:hello = "world"`

Output local buffer hello:

`:echo b:hello`

When you see a variable that starts with a character and a colon it's describing a scoped variable.

## Tabbing

`:tabnew` / `:tabe` Create a new tabset

`{number}gt` Go to tabset of {number}

`gt` / **`<leader>n`** Switch to right tabsets

`gT` / **`<leader>m`** Switch to left tabsets

[Just a moment...](https://superuser.com/questions/410982/in-vim-how-can-i-quickly-switch-between-tabs) :

This is the easiest way that I found, to switch between tabs faster and simple. 

Add next lines to your .vimrc and enjoy it, more tricks about vim tabs here.

`nnoremap <c-left> :tabprevious<cr>`

`nnoremap <c-right> :tabnext<cr>`

Now you can use ctrl ← to go left and ctrl → to go right.

## Marks

`:help` marks Help on the Vim marks feature

`:marks` List bookmarks

`:delmarks` {mark/range} delete the mark or range of bookmarks a-z, A-Z (letters only)

`m{lower case letter}` Bookmark to local file

`m{upper case letter}` Bookmark across files

`'{bookmark letter}` Jump to that bookmark

`{bookmark letter}` Jump to the specific column on the specific line bookmarked

`\`\`` Move the previous mark [jump back (to position in current buffer where jumped from)]

`d\`{bookmark letter}` - Delete (copy to the clipboard) everything from the
marked position {bookmark letter} to the cursor position

More on marks in Vim:

[Bookmark frequent locations - VimTricks](https://vimtricks.com/p/bookmark-frequent-locations/)

## Macros

Macros let you record a series of ad-hoc commands that you can repeat to modify the file.

When starting to record a macro with q you will see the text 'recording' at the
bottom of the window with any commands you enter assigned, in sequence, to the
register {number|letter} until q is pressed again to end recording.

You can find out more about macros at: 

[Vi and Vim Macro Tutorial: How To Record and
Play](http://www.thegeekstuff.com/2009/01/vi-and-vim-macro-tutorial-how-to-record-and-play/)

`q{number|letter}` Start (and end) the macro recording

`@{number|letter}` - Run the macro assigned to the {number|letter}

`{number}@{number|letter}` - Run the macro assigned to the {number|letter} {number of times}

`@@` Repeat the last macro.

`{number}@@` Repeat the last macro {number} of times.

### Editing existing register

1 - Output the macro:

`"{number|letter}p` Paste the {number|letter} macro on to a (blank) line

2 - Edit the macro text.

3 - Put the changed text back into the macro:

`"{number|letter}y` Yank the edited macro back to {number|letter}

Alternatively:

1 - Output the macro:

`:echo @{number|letter}`

2 - Select and copy the text (with the mouse).

3 - Paste and edit the changed text and put back into the macro:

`:let @{number|letter}=‘{copied and edited text}’ <enter>`

Apply a macro with visual (line) select:

`V{destination}:norm @{macro}`

Eg. from the current line to the end of the file apply the macro q:

`VG:norm @q`

## Other

Set background colour indicator to 80th column

`:highlight ColorColumn ctermbg={colorvalue}`

`:call matchadd('ColorColumn','\%81v',100)`

Open the .vimrc in a vertical split:

`:vsp $MYVIMRC`

## Vim File Templates

Called ‘skeleton files’ in Vim, it provides a way to template files using Vim’s event scripting. See more at:

[Vim File Templates - VimTricks](https://vimtricks.com/p/vim-file-templates/)

## Plugins

### Surround

* [Surround](https://github.com/tpope/vim-surround)

Copied from the vim-surround README:

**surround.vim**

Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

It's easiest to explain with examples. Press `cs"'` inside

**"Hello world!"**

to change it to

**'Hello world!'**

Now press `cs'<q>` to change it to

**<q>Hello world!</q>**

To go full circle, press `cst"` to get

**"Hello world!"**

To remove the delimiters entirely, press `ds"`.

**Hello world!**

Now with the cursor on `"Hello"`, press `ysiw]` (`iw` is a text object).

**[Hello] world!**

Let's make that braces and add some space `(use` `}` instead of `{` for no space): `cs]{`

**{ Hello } world!**

Now wrap the entire line in parentheses with yssb or yss).

**({ Hello } world!)**

Revert to the original text: `ds{ds)`

**Hello world!**

Emphasize hello: `ysiw<em>`

**<em>Hello</em> world!**

Finally, let's try out visual mode. Press a capital V (for line wise visual mode) followed by S<p class="important">.

**
<p class="important">
  <em>Hello</em> world!
</p>
**

* [Vimium](https://chromewebstore.google.com/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en)

* [GitHub - junegunn/fzf.vim: fzf vim](https://github.com/junegunn/fzf.vim)

### Surround

[CTRL P](https://github.com/ctrlpvim/ctrlp.vim)

Basic Usage
Run `:ctrl P` or `:ctrl P [starting-directory]` to invoke **ctrlP** in find file mode.
Run `:ctrl P Buffer` or `:ctrlPMRU ` to invoke **ctrl P** in find buffer or find **MRU** file mode.
Run `:ctrl P Mixed` to search in Files, Buffers and **MRU** files at the same time.
Check `:help ctrl p-commands` and `:help ctrlp-extensions` for other commands.

Once **ctrlP** is open:
Press `<F5>` to purge the cache for the current directory to get new files,
remove deleted files and apply new ignore options.
Press `<c-f>` and `<c-b>` to cycle between modes.
Press `<c-d>` to switch to filename only search instead of full path.
Press `<c-r>` to switch to regexp mode.
Use `<c-j>`, `<c-k>` or the arrow keys to navigate the result list.
Use `<c-t>` or `<c-v>`, `<c-x>` to open the selected entry in a new tab or in a new split.
Use `<c-n>`, `<c-p>` to select the next/previous string in the prompt's history.
Use `<c-y>` to create a new file and its parent directories.
Use `<c-z>` to mark/unmark multiple files and `<c-o>` to open them.
Run `:help ctrlp-mappings` or submit `?` in **ctrlP** for more mapping help.

Submit two or more dots `..` to go up the directory tree by one or multiple levels.
End the input string with a colon `:` followed by a command to execute it on
the opening file(s): Use :25 to jump to line 25. Use `:diffthis` when opening
multiple files to run `:diffthis` on the first 4 files.

### CSS Color

*Something to look into if I style in Vim and want to see the colours there.*

### How to Write a Vim Plugin

--TODO--

## Variables

More on variables at: [Variables / Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/chapters/19.html)

`:let foo="bar"`

`:echo foo` output **foo**

`:let foo=42` Reassign foo a different value (`let` is required)

`:echo foo`

`:echo &wrap` The `&` refers to the option not any variable that has that name.

`:set textwidth?` With `set` only one single literal value is assigned whereas with `let` more options are available: 

`:let &textwidth = &textwidth + 10`

`:set number?` Assign the value in the number variable to the number setting.

`:let &l:number=1` Set local option for the buffer.

`:echom "foo" | echom "bar"` Here the `|` is a way to have two commands on the one line.

## String Functions

Get the length of the `{string}`

`strlen({string})`

Get the length of the `{string}`

`len({string})`

Make a string a list:

`split({string}[,{stringseperator}])`

Join a list to make a string:

`join({string}[,{stringseperator}])`

Certain Vim script functions can be used a methods on objects. For instance, the
following takes a string, splits it by the default single character white-space, 
then passes that list to the join function where it joins it to make a 
string with the **,** character:

`split("one two three")->join(',')`

## Execute

More about buffers at:

[Execute / Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/chapters/28.html)

The `execute` command is used to evaluate a string as if it were a Vimscript
command.

`:execute "echom 'Hello, world!'"` evaluates `echom 'Hello, world!'"` as a
command.

`execute "rightbelow vsplit " . bufname('#')` Open the alternate buffer (`#`)
in a new right split.

`execute "rightbelow vsplit " . bufname('%')` Open the buffer in the current
window (`%`) in a new right split.

## Normal

`:normal G` Run the normal G command to go to the bottom of the buffer.

`:normal ggdd` Go to the top of the buffers and delete the line.

Use `:normal! {command}` To run the normal `{command}` not using any (normal) mappings.

`:execute "normal! gg/foo\<cr>dd"` This will move to the top of the file,
search for the first occurrence of **foo**, and delete the line that contains it.

`:execute "normal! mqA;\<esc>`q"` Normal command to mark where the cursor is on
the current line, append **;** to the end of the line then return the cursor
back to where the mark was placed.

## TODO

* Find out about gn/gN + cgn

* Find out how to enable omnifunc for JS/TS (vim set omnifunc=...)
