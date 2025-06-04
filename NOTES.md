# Vim Notes

Following commands for when in command 'ex' mode:

When in view ('vi') mode Escape key goes to 'ex' mode. Various commands including i, a, o, O will automatically go to 'vi' (insert) mode after the command is executed (see *).

^ + means, in 'ex' mode, to hold down alt/option and press the following character (eg. ^+g means hold down alt/option and press g).

You can traverse back though he history of your :, / and ? commands by typing :, / or ? and pressing the up and down cursor keys. / and ? share the same history.

In Mac OS Terminal the mouse scrolling function (scroll-wheel or equivalent) will move the cursor up and down lines.


Useful links

https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

http://www.ungerhu.com/jxh/vi.html
https://www.worldtimzone.com/res/vi.html
50 Useful Vim Commands
Coming Home to Vim / Steve Losh
Vim documentation: options
https://vimtricks.com/p/display-hidden-characters/


Leader commands (,+cmd) set in the .vimrc file. Here displayed in bold.

## Customising Vi/Vim

Vi/Vim can be customised in the ~/.vimrc file.

To put comments in this file start the line with single double-quotes (").

Here colours can be set for modes. eg.:

autocmd InsertEnter * highlight Normal ctermfg=lightblue
autocmd InsertLeave * highlight Normal ctermfg=green

And keyboard mapping overriding the default. eg. to set jj to fire the escape key in input mode:

inoremap jj <esc>

Or ; to replace the $ for moving the cursor to the end of the line in command mode:

inoremap ; $

To source (apply) changes to your .vimrc file after you’ve edited it:

:source %

Or:

:source ~/.vimrc

Information about the file (including full file name, line cursor is at how far down the document as a %):

:file

Information about the vim setting for the file based on its type:

:filetype


“This line will automatically reload you .vimrc whenever you update it.”
	⁃	https://www.youtube.com/watch?v=XA2WjJbmmoM

autocmd! bufwritepost .vimrc source %


##Command Mode

: / <space> Enter command mode.
<Ctrl+c> Clear text.



##Configuration

:map {letter} {commands} Map the key {letter} to a string of Vi/Vim {commands}


Info on configuration options: 
https://www.cyberciti.biz/faq/vi-show-line-numbers/

Note that :set can also be written as :se

:set

- Show the set options.


List all current vim settings

:set all
 To see a list of everything that you have set so far in your vim config file or at runtime, type the following command at the : prompt:

:set

Prepend "no" to switch an option off. Eg.:

:set noic

Line numbers

Show line numbers:

:set nu

Hide line numbers:

:set nu!

Show relative line numbers:

:set rnu

Hide relative line numbers:

:set rnu!

Can have both regular line numbers and relative line numbers enabled at the same time.

Append the following line:

:set number
 To disable and not set line number by default in vim, add the following in ~/.vimrc file:

:set nonumber


###File types

Find out the file type of the open file:

:set ft?


###Smartcase

Make it so searches are 'smartcase'. This will automatically switch to a case-sensitive search if you use any capital letters:

:set smartcase 
:map! Show all mapping

##Set syntax highlighting

:syntax off
:syntax on


##Test wrapping

https://stackoverflow.com/questions/2280030/how-to-stop-line-breaking-in-vim

To wrap lines visually, i.e. the line is still one line of text, but Vim displays it on multiple lines:

:set wrap

To display long lines as just one line (i.e. you have to scroll horizontally to see the entire line):

:set nowrap

By default this will wrap at the first character that won't fit in the window. This means it will wrap in the middle of a word if that's where the window boundary lies. To change it to wrap on word boundaries, you can also:

:set linebreak

This will cause wrap to only wrap at the characters in the breakat setting, which defaults to space, tab, and small set of punctuation characters.

:set breatat= ^I!@*-+;:,./?


Spelling

Enable:

:set spell

Disable:

:set nospell

Toggle:

:set spell!

z= Give spelling suggestions for word under cursor
]s Move cursor to next mispelt word
[s Move cursor to previous misspelt word


Opening files and effecting files with vim at the command line

Command line

Useful links:
https://learnbyexample.gitbooks.io/vim-reference/content/Command_Line_mode.html

Open a file at particular location/line number - Jump to particular line number from a shell prompt, enter:

vi +linenumber file.c
vi +300 initlib.c
 Jump to particular line that starts with a search term:

vi +/searchTermHere file.c

main or main function from a shell prompt, enter (note note shell escape done with \):

vi +/main initlib.c
vi +/main\( initlib.c

adduser(:

vi +/addUser\( initlib.c
vi +/addUser\(arg1\) initlib.c

Take the concatenated files *.vim and pipe them to vim as the input:

cat *.vim | vim -


Tabs

Open two or more files in tabs:

vim -p [filepath1] [filepath2] [filepath3]

Open all files in a directory in tabs:

vim -p *

Open all files in a directory of a file type in tabs:

vim -p *.{filetype}

Note that tabs are also buffers in Vim so :buffers will list the tabs.



Help

f1 / :help
:help {command} View a help entry (eg. :help user-manual)

CTRL-W CTRL-W To jump from one window to another. Also works with splits.
:q Close help.



When entering in : commands <CTRL+D> will give a list of matching options; <TAB> to auto complete.



File Browser - NetRW

:Explore / :Ex
:Lex NetRW explorer on the left (stays open on file open)
:Lex! NetRW explorer on the right
:Sex NetRW explorer on top (stays open on file open)
:Sex! NetRW explorer on the left (stays open on file open)
% Create new file
D Delete file
s Sort listing
r Reverse sorting order
x Special - opens the file in the web browser
R Move - rename the file
p Preview file - effectively open a new split
I Toggle banner visibility
i Cycle view types
x Open file in associated program (HTML in the web browser, images in Preview etc.)
v Open file in a vertical split
o Open file in a horizontal split
<enter> Toggle tree directories open/close in tree view


Commands to save

:wa Save changes made to all the files opened

Commands to exit

:exit / :e Exit
:q Quit
:qa Quit all files open in the buffer (splits and tabs)
:wq Write an quit (same as ZZ)
:q! Quit without saving any changes
ZZ Save and exit
:x Close file
:wall / :wa write all files open in the buffer (splits and tabs)

Move

Move with the cursor keys or:

h Move cursor cursor 
{number}h Move cursor left {number} characters
j Move cursor down
{number}j Move cursor down {number} characters
k Move cursor up
{number}k Move cursor up {number} characters
l Move cursor right
{number}l Move cursor right {number} characters
:+{number} Move cursor up {number} of lines
:-{number} Move cursor up {number} of lines

b Move to the start of the previous word (punctuation considered words).
B Move to the start of the previous word following whitespace (no punctuation).
w Move to the start of the (punctuation considered words).
W Move to the start of the (no punctuation / spaces separate words).
e Move to the end of the next word (punctuation considered words).
E Move to the end of the next word following whitespace (including punctuation).

0 Move cursor to the start of the line.
$ / ' Move cursor to the end of line.
^ / - / ; First non-blank character of line.
+ Move cursor to the first non-whitespace character of the next line.
* Move cursor to the next occurance of the word the cursor is over.
# Move cursor to the previous occurance of the word the cursor is over.
H Move cursor to the top of the screen.
M Move cursor to the middle of the screen.
L Move cursor to the bottom of the screen.
{ Move cursor to the start of previous paragraph
} Move cursor to the start of previous paragraph
( Move cursor to the start of the previous sentence
) Move cursor to the start of the next sentence
f{character} Move cursor to the next <character> on the current line.
F{character} Move cursor to the previous <character> on the current line.

Ctrl + f Forward one screen.
Ctrl + b Back one screen.
Ctrl + d Forward 1/2 screen.
Ctrl + u Forward 1/2 screen.
Ctrl + e Scroll screen up one line.
Ctrl + y Scroll screen down one line.
Ctrl + g Show file info and file status.

gg / [[ Move to the top of the file.
G / ]] Move to the bottom of the file.
<number>G / <number>gg / :<number> Move to that line number (or the last line if the number is greater than the number of line in the file).
gj Move cursor down line for wrapped text.
gJ Join the following line with the current line with no space separation.
gh Move cursor up line for wrapped text.
ga / :as Show details about the character under the cursor - eg. <“> 8220, Hex 201c, Oct 20034, Digr "6.
gi Go to last place text was in  insert mode.
gv Go to last place text was in visual select mode.
gu Make a line of text, all lowercase.
gV Make current line of text all uppercase.
g~ Make current line of text case-inverted.
gd Goto local Declaration of the variable under the cursor. This from vim help:
    When the cursor is on a local
	 variable, this command will jump to its declaration.
	 First Vim searches for the start of the current
	 function, just like "[[".  If it is not found the
	 search stops in line 1.  If it is found, Vim goes back
	 until a blank line is found.  From this position Vim
	 searches for the keyword under the cursor, like with
	 "*", but lines that look like a comment are ignored
	 (see 'comments' option).
	 Note that this is not guaranteed to work, Vim does not
	 really check the syntax, it only searches for a match
	 with the keyword.  If included files also need to be
	 searched use the commands listed in |include-search|.
	 After this command |n| searches forward for the next
	 match (not backward).
gD Goto Global Declaration of the variable under the cursor. Like gd but starts at line 1.

g% Repeat last substitution, but globally.

ea Go to the end of the word.

<space> Enter : for command - Default move cursor to the next character.
<tab> Jump between matching brackets under cursor

S / dd Delete current line and go into insert mode
V Start line visual selection at cursor
Ctrl + v Start character visual selection at cursor
^v Multi line visual selection 

% / <tab> - Move cursor to the closest (and then toggle) to the associated brackets - ( ), { }, [ ] - on the current line.

gd			Goto local Declaration.  When the cursor is on a local
			variable, this command will jump to its declaration.
			First Vim searches for the start of the current
			function, just like "[[".  If it is not found the
			search stops in line 1.  If it is found, Vim goes back
			until a blank line is found.  From this position Vim
			searches for the keyword under the cursor, like with
			"*", but lines that look like a comment are ignored
			(see 'comments' option).
			Note that this is not guaranteed to work, Vim does not
			really check the syntax, it only searches for a match
			with the keyword.  If included files also need to be
			searched use the commands listed in |include-search|.
			After this command |n| searches forward for the next
			match (not backward).


Command window

q: open command line window

https://vimtricks.com/p/vim-command-line-window/


Edit

i Insert at the cursor (before the current character).
I Insert at the start of the current line.
a Insert (append) at the cursor (after the current character).
A (Shift + a) Insert (append) at the end of the current line.
o (letter o) Insert new line under/after cursor.
O (capital letter O) Insert new line before cursor.
. Repeat last command.
{number}. Repeat last command {number} of times.

u Undo
<Ctrl+r> Redo

yy / :y Yank (copy) line.
{number}y Yank (copy) multiple {number} lines.
yw / yiw Yank (copy) the word under the cursor. 
y$ / y' / Y Yank (copy) the from under the cursor to the end of the line.
"{character}yy Yank the current line to register {character}.
yt{character} Yank from the cursor to the next {character} on the current line.
y{number}w Copy the {number} of words.
yip Yank inside paragraph.
yap Yank around paragraph.

x Delete (remove as copy) character the under the cursor.
{number}x Delete (remove as copy) {number} of characters the under and right of the cursor.
X Delete (remove as copy) charactet left of the cursor.
{number}X Delete (actually copy) {number} of characters left of the cursor.

c$ / c' Cut (remove and go to insert mode) from the cursor to the end of the current line.
cw Cut (remove and go to insert mode) to the end of word.
ciw Cut (remove and go to insert mode) word cursor is inside of?
cc / S Delete line at cursor and substitute text.
s Delete character at cursor and subsitute text and enter insert mode.
S Indent cursor to document indentation.

c/{pattern} From the cursor to the first matched pattern change (cut) the text and go into insert mode.
d/{pattern} From the cursor to the first matched pattern delete the text.
c?{pattern} From the cursor to the first matched pattern change (cut) the text and go into insert mode.
d?{pattern} From the cursor to the first matched pattern delete the text.

dd Delete line (stay in normal mode).
{number}dd Delete a number of lines under cursor (where {number} is the number of lines starting).
dw / diw Delete word (including following whitespace) - if the cursor is in the middle of the word deletes to the end of the word.
d{number}b Delete multiple {number} of previous words.
d{number}w Delete multiple {number} of following words.
d{number}j Delete multiple lines {number} after the current line
d{number}k Delete multiple lines {number} above the current line
d{number}h Delete multiple {number} of previous characters on the current line
d{number}l Delete multiple {number} of following characters on the current line
dt{character} Delete from cursor to before next found character
dT{character} Delete from cursor to after previous character
df{character} Delete from cursor to including next found character
dF{character} Delete from cursor to including previous found character
d$ / D / d' Delete from cursor to the end of the line
diw Delete inside word
ciw Cut inner word and go into insert mode
cap Cut around paragraph
cit Cut content between matching tags
cat Cut content around matching tags
di" Delete inside " marks
da" Delete around " marks
dit Delete inside matching tags
dat Delete arount matching tags
dip Delete inside paragraph
dap Delete around paragraph
di( / dib Delete inside ()
da( / dab Delete around ()
di[ Delete inside []
da[ Delete around []
di{ / di} Delete inside {}
da{ / da} Delete around {}
di< / di< Delete inside <>
da> / di> Delete around <>
dgg Delete from cursor to start of the file
dG Delete from cursor to end of file

va( / vib Visual select around ()
vi( / vib Visual select inside ()
va{ Visual select around {}
vi{ Visual select inside {}
va[ Visual select around []
vi[ Visual select inside []
va" Visual select around ""
vi" Visual select inside ""
va" Visual select around ''
vi" Visual select inside ''

p Paste under (after) the cursor 
P Paste over (before) the cursor
"{character}p Paste from the register {character} after the cursor
"{character}P Paste from the register {character} before the cursor

r{character} Replace {character}
R{characters} Replace the text where the cursor is at with {characters} - Each character you enter will replace the character the cursor is over moving onto the next one - Press <esc> to cancel out of this

J Join current and next line seperated with a space
~ Change the case of the letter under the cursor (inclusive of the current line)

>> Indent current line by one increment
<< Decrent current line by one increment
{number}>> Increment current and following {number} (inclusive) lines
{number}<< Decrement current and following {number} (inclusive) lines
>>{number}j Increment current and following {number} (inclusive) lines
<<{number}j Decrement current and following {number} (inclusive) lines
:.;+{linenumber}> Indent range from current line to relative linenumber
:.;+{linenumber}< Decrement range from current line to relative linenumber
== Set indentation to logical surrounding indentation
{number}== Set indentation to logical surrounding indentation for the current and following {number} (inclusive) lines

<Ctrl+o> Move cursor to previous place.
<Ctrl+i> Move cursor to next place.

gi Go to the last insertion location.
gv Reselect previous visual selection.
gf Open file path under cursor into a new buffer.
g_ Go to the last non-whitespace character on the current line.
gg=G To auto-indent entire document.
guw Make the word after the cursor all uppercase.
gUw Make the word after the cursor all lowercase.
{number}guw Make {number} of words all uppercase.
{number}gUw Make {number} of words all lowercase.
gJ Join following line without a space (continuous join).
gx Open file/url under cursor - urls should open in the browser but, due to a bug in Vim 8.2 (which I have) it attempts to download the HTML as a file instead (which is not what I want.

cit Jump into HTML tag.
vit Visual select in html tag

xp Cut then paste letter - effectively transpose the letter under the cursor with the following letter - repeating this can move the initial character further along in the text when repeated

:{number},{number}d Delete lines by range of numbers (y instead of d to yank?).

Delete lines which include the {regexpattern}:

:g/{regexpattern}/d

Substitute ‘me’ to ‘you’ only on the lines that have the {regexpattern}:

:g/{regexpattern}/s/me/you


Append text on the current line via the command area (. on a new line after {enter text} to finish and bring the text to the file:

:a
{enter text}
...
{enter text}
.

As above but at the start of the file:

:0a

As above but at the end of the file:

:$a

As above but at a specific line of the file:

:{linenumber}a


Insert text on the current line via the command area (. on a new line after {enter text} to finish and bring the text to the file):

:i
{enter text}
...
{enter text}
.

As above but at the start of the file:

:1i

As above but at a specific line of the file:

:{linenumber}i


Change text on the current line via the command area (. on a new line after {enter text} to finish and bring the text to the file):

:c
{enter text}
...
{enter text}
.


:{startrange};{endrange}c
{enter text}
...
{enter text}
.


Numbers 

{number}% Move the cursor to the {number} % place in the file.

<Ctrl+a> Increment/increase the number under the cursor by 1 - hold this combination to more rapidly increase the number
{number}<Ctrl+a> Increase/decrease the number under the control by {number}
<Ctrl+x> Decrement the number the cursor is over by one - hold this combination to more rapidly increase the number
{number}<Ctrl+x> Decrement the number under the control by {number}

Note with the above the cursor will jump to the next number on the line the cursor is on if not over a number.


"%p Insert file name at cursor

Autocomplete

In insert mode.

<Ctrl+n> Autocomplete (first) word being entered and move to next if more than 1.
<Ctrl+p> Autocomplete (last) word being entered and move to previous if more than 1.

Precede these with <Ctrl+n> to scope to just this file.

<Ctrl+e> Cancel autocomplete.
<Ctrl+y> Accept autocomplete option highlighted.

<Ctrl+x><Ctrl+f> Autocomplete to directory names and filenames in the path (where path is set in the .vimrc). If no preceeding text will list all directory and filenames.



Screen Manipulation

:.= Gives the line number the cursor is at.
:= Gives the total number of lines in the file.
zz Position screen with cursor in the middle.
zt Position screen with cursor at the top.
zb Position screen with cursor at the bottom.
z. Position screen with cursor in the middle and start of the line.
z<Enter> Position screen with cursor at the top and start of the line.
z- Position screen with cursor at the bottom and start of the line.
<Ctrl+y> Moves screen up one line (only change the cursor position if it would be moved off screen).
<Ctrl+e> Moves screen down one line (only change the cursor position if it would be moved off screen).
<Ctrl+u> Moves cursor & screen up half of a page.
<Ctrl+d> Moves cursor & screen down half of a page.
<Ctrl+b> Moves screen up one page, cursor to last line.
<Ctrl+f> Moves screen down one page, cursor to first line.
<Ctrl+y> and Ctrl-e only change the cursor position if it would be moved off screen.
<Ctrl+u> Undo in insert mode.
<Ctrl+i> Redraws the screen?
<Ctrl+r> Redo last undo.
<Ctrl+g> Gives the name of the file, the line number the cursor is currently at and the total number lines in the file, the percentage of how far down the document the cursor is and the column the cursor is at. Get cursor position info like current line number, column number and total number of lines. This info is displayed at the bottom of the screen.
<Ctrl+o>{normal cmnd} Enter a normal command in insert mode. 
<Ctrl+w> Delete a word in insert mode. 
<Ctrl+i> Delete from the cursor to the start of the line in insert mode. 



:history View the history of commands



Execute Terminal Commands

:!{command}

Eg. List files in the current directory:

:!ls



Find and Replace

Links about find + replace: 
http://www.linfo.org/vi/search.html
https://vim.fandom.com/wiki/Search_and_replace
https://learnbyexample.gitbooks.io/vim-reference/content/Regular_Expressions.html
https://vimtricks.com/p/inspect-character-under-cursor-in-vim/ (replace unicode / special characters) 

https://vim.fandom.com/wiki/Search_and_replace#:~:text=The%20%3Asubstitute%20command%20searches%20for,replace%20it%20with%20'bar'.

f{character} - next instance of {character} from cursor?
F{character} - previous instance of {character} from cursor?
r{character} - Replace the character under the cursor with {character}.

Find the next instance of the text (pattern) (cases sensitive unless configured otherwise):

/{pattern}

Find the previous instance of the text (pattern) (cases sensitive unless configured otherwise):

?{pattern}

Find the next instance of the text (pattern) (cases sensitive unless configured otherwise):

/\c{pattern}

n - Find the next instance of the searched pattern.
N (Shift + n) - Find the previous instance of the searched pattern.

Use a \c to do a case-insensitive search or \C a case sensitive search (default) (eg. /search\c or /\csearch will search for 'search', 'Search', 'SEARCH' or 'searcH'; /\CSearch will only search for 'Search'). 

Find and replace on the current line  (. is not required to indicate the current line but is here to demonstrate its use):

:s/{pattern}/{replace}/{flags}
:.s/{pattern}/{replace}/{flags}

Find and replace one instance of text (pattern) in the whole file first instance:

:%s/{pattern}/{replace}/{flags}

Substitute instances of text {pattern} with {replace} from {linestart} to {linend}:

:{linestart},{lineend}s/{pattern}/{replace}/{flags}

:{linestart},+{relativelinenumerdown}s/{pattern}/{replace}/{flags}

:{linestart},-{relativelinenumerup}s/{pattern}/{replace}/{flags}

Eg.:

:4s,10s/yes/no

Can use either . or omit for the current line when searching and replacing a range - eg.:

:,10s/yes/no
:.,10s/yes/no

Use a relative range for search and replace with - and + -eg. (with - will asked to confirm):

:.,+34s/yes/no
:,-14s/yes/no


Search and replace from the first line of the file to the current line:

:1,.$s/yes/no
:1,$s/yes/no

Search and replace from the current line to the end of the file:

:.,$s/yes/no
:,$s/yes/no

Search and replace the first instance of {pattern} with {replace} on the current line:

:.s/{pattern}/{replace}

Current line case insensitive search first instance:

:s/pattern/replace/i

Capital (I) for case sensitive. 

Current line all instances:

:s/pattern/replace/g

Whole file all instances:

:%s/pattern/replace/g

Current line first instance confirm change:

:s/pattern/replace/c

Whole file first instances confirm change:

:%s/pattern/replace/c

Use flag n to count - not replace- occurrences:

:%s/pattern/replace/n

Whole file all instances, confirm change and case insensitive:

:%s/pattern/replace/gci

With /c you will go into ‘confirmation mode’. In this mode, you’ll be presented with the following option: replace with 
UU (y/n/a/q/l/^E/^Y)?

The choices:

y YES, replace this match.
n NO, don’t replace this match and move to the next one.
a Replace ALL matches.
q QUIT without replacing any match.
l Replace this match and quit as if it was the LAST match.
^E Scroll the screen up.
^Y Scroll the screen down.

Search examples

/Hello Matches if the line contains the value Hello
/^TEST$ Matches if the line contains TEST by itself
/^[a-zA-Z] Matches if the line starts with any letter
/^[a-z].* Matches if the first character of the line is a-z and there is at least one more of any character following it
/2134$ Matches if line ends with 2134
/\(21|35\) Matches is the line contains 21 or 35 -  Note the use of ( ) with the pipe symbol to specify the 'or' condition
/[0-9]* Matches if there are zero or more numbers in the line
/^[^#] Matches if the first character is not a # in the line

Special characters to escape

\s for whitespace character
\t for tab character
\w for letter character

Search Pattern Modifiers

https://learnbyexample.gitbooks.io/vim-reference/content/Regular_Expressions.html#search-pattern-modifiers

\v helps to avoid \ for pattern qualifiers, grouping pattern, etc

/\vc{5} Match exactly 'ccccc'
/\vabc+ Match 'abc' or 'abccc' but not 'ab'
/\vabc? Match 'ab' or 'abc' but not 'abcc'
/\v<his> Match whole word 'his', not 'this' or 'history'
/\vmin|max Match 'min' or 'max'
/\vhand(y|ful) Match 'handy' or 'handful'
/\v(\a)\1 Match repeated alphabets
s/\v(\d+) (\d+)/\2 \1/ swap two numbers separated by space

:set ic Set search ingnore case.
:set hls Set highlight search.
:set nohlsearch Unset highlight search.
:set is (incsearch) Show partial matches for a search phrase.

Notes

	•	Regular expressions are case sensitive
	•	Regular expressions are to be used where pattern is specified
	•	To enter unicode characters into a command (eg. find and replace) enter <Ctrl+v>u, the unicode value, <enter>

Can back-reference the whole match with backslash zero - eg. (to globally change ‘apple’ to ‘apples’) :

:%s/apple/\0s/g

Use back references to refer to (escaped) bracketed sections of text - eg (to globally change ‘apples’ to ‘allies’):

:%s/\(a\)pp\(les\)/\1lli\2/g

With * or # to search for next/previous occurrence of a word under the cursor that match becomes the {pattern}, or the result of a search (/ or ?),  you can use to substitute with the following ({pattern} is implied from the previous match/search):

:%s//{replace}


Add command

Add a block of content, including line breaks, as a command:

:a <enter>

Command space will let you add free text. Enter to go to a new line. When done press escape to add the new content to where the cursor is in the document.


Go to line number command

Command to go to a line number:

:<number>



Miscellaneous 

Assign a value (here string) to register {character}:

:let @{character} = "something"

Output register {character}:

:echo @{character} 

Output the last search pattern:

:echo @/

See the vim files used to customise vim:

:scriptnames

Run Terminal command to add the current date and time:

:r!date 

Copy from one part of the document to where the cursor is:

:{relativelinenumberstart},{relativelinenumberend}co.

Eg.

:-16,-14co.


Move text at cursor and next line  to the end of the document (can omit the .; the 1 can also be omitted here): 
:.,+1m$
:,+m$

Copy text at cursor and the next 2 lines to the start of the document (can omit the .):

:.,+2t0


Visual Mode 


Enter (and exit) visual mode:

v

Enter (and exit) block visual mode:

Shift+v

Enter (and exit) visual block mode (visual block mode allows for editing multiple lines at the same cursor point):

Ctrl+v

In visual block mode move to select from the current cursor point with h, j, k and l and use commands like x, c, r (for replace) etc to effect that selection. To insert text across multiple lines with the visual block mode, move to select the multiple lines and characters then press Shift + i. Enter the text for the current line with the cursor then press <esc> to apply across multiple lines. Cannot delete with the insert mode.

From normal mode:

vaw Select a word.
v{number}word Select {number} of words.
vip Select a paragraph inside.
vap Select a paragraph includes.
vib Select a () block inside.
vab Select a () block includes.
vi{ Select a {} block inside.
va{ Select a {} block includes.
vi[ Select a [] block inside.
va[ Select a [] block includes.
v{number}> Indent line by {number}.
v{number}< Decremennt line by {number}.

In visual select mode:

d Deletes the visually selected text.
o Move to other end of marked area.
O Move to other corner of block.
w Select next word.
r{character} Replace selected characters with the new character.
{number}word Select {number} of words.
` Toggle case.
ib Select a () block inside.
ab Select a () block includes.
i{ Select a {} block inside.
a{ Select a {} block includes.
i[ Select a [] block inside.
a[ Select a [] block includes.
u Change the selected text to lowercase.
U Change the selected text to uppercase.
aw Mark a word?
v{selection}{character}y Yank the selected text into register {character}.
v{selection}{character}Y Yank the selected lines into register {character}.
:w {filename} Write the visually selected text to the filename TEST.

{Ctrl}+v To enter visual select mode, move vertically to select multplie lines and enter either I or A to insert or append (respectively) entered changes over multiple lines when exiting insert mode.


Paste from the register

Useful to paste from a previous change (ie, cut, yank).

View the registry (list of prior changes to the doc/buffer):

:reg

Note the "{character} against the text you want to paste

In normal mode paste from the register:

"{character}p Paste from register {character} after cursor.
"{character}P Paste from register {character} before cursor. 


With a list like:

1. First
1. Second
1. Third
1. Forth
1. Fifth
1. Sixth
1. Seventh

Select the second to the last line in visual mode and enter:

g<Ctrl+a>

This will increment the list giving:

1. First
2. Second
3. Third
4. Forth
5. Fifth
6. Sixth
7. Seventh

Math Calculations in Vim

https://vimtricks.com/p/vim-calculator/

Mathematical calculations can be done when in insert mode. For instance to get the result of a math equation:

<Ctrl+r>={math equation}<enter>

In normal mode use:

:put ={math equation}<enter>

An example of a math function here is:

:put =range(1,10)

This will give 1 to 10 on seperate lines.

If you have a math equation on a line you can store that in the register with:

“{letter}yy

Then in insert mode:

<Ctrl+r>=<Ctrl+r>{letter}<enter>

Will give the result of that equation. You may have to edit the equation before hitting enter as unwanted character(s) may appear.

With the equation in the resister in vim, go to insert mode and enter Ctrl+r = then Ctrl+r " to paste the yanked text and press <enter>


Edit multiple contiguous lines

To edit multiple contiguous lines at the same column (ie. for commenting multiple lines), from the starting place go into visual mode with Ctrl + v (not V line mode), move up/down to the ending place, go into insert mode with I, enter the character(s) and escape out. The multiple lines will now have the same character in the same place. Can also use this to change case with ~ or delete with d/x.


Copy all text to the system clipboard

Use:

:%y+

Explanation:
	•	% to refer the next command to work on all the lines
	•	y to yank those lines
	•	+ to copy to the system clipboard

Set to:

<leader>e

Copy visual select lines to the system clipboard

V and select lines

:'<,'>y+

The '<,'> is entered in for you as representative of the visual line select, so y, + and enter will copy the selected range into the system clipboard.


Substitution across different ranges:

:for range in split('6,10 14,18')| exe range 's/<search_string>/<replace_string>/g' | endfor


Substitution in marked ranges:

:s'a,'b/before/after/gci

The above will search from marked range starting point a going to marked point b and confirm global replacement of ‘before’ with ‘after’.


Code folding

https://vimtricks.com/p/vim-code-folding/

For Lua and python the following fold method is most suitable:

:set foldmethod=indent

Vim Folding Commands

The most important Vim code folding commands:

za / ,z Toggles the current fold open or closed – the most useful command to know of all of these.
zA Same as za except it toggles all folds beneath as well. Since folds can be nested (such as with indent folding), this will toggle the state of all the folds underneath of it, not just the current fold.
zc Close the current fold under the cursor.
zC Same as above, but closes folds nested underneath as well.
zo Open the current fold under the cursor.
zO Same as above, but opens folds nested underneath as well.
zR Open all folds.
zM Close all folds.


Jump list

https://vimtricks.com/p/vim-jump-list/

When making certain movements, such as jumping to line 42 with 42G, Vim will save it as a “jump” in the jump list. 

:jumps You can list jumps

To move backwards through the jump list to an older jump use <ctrl-o>.
To move to a newer jump use <ctrl-i>. You can also press <tab>.
{number}ctrl+i Jump to {number} in control list

Vim will store up to 100 locations in your jump list. If you ever want to clear them all out, run the command :clearjumps and your jumplist history will be wiped clean.
For more info, check out :help jumplist in Vim. Also be sure to read about the Vim change list which is similar to but different from the Vim jump list.

Change list

https://vimtricks.com/p/vim-jump-to-last-change/

Vim keeps track of the position of every undo-able change and makes the last 100 available to you when you call :changes. You can navigate backwards and forwards to these positions in your file without undoing the change by using g; and g,.

:changes – Show position of last 100 changes
g; – Vim jumps to the last change you made
g, – Vim jumps forward through the change list

The change list is different to jump list as it tracks undoable changes. 

Multiple Files and Split Windows

Open Multiple files

vi [filename1 filename2 etc.]

Open multiple files in horizontal splits (- lowercase o):

vi  -o  [filename1 filename2 etc.]
vi  -o  *.js

Open multiple files in vertical splits (- capital o):

vi  -O  [filename1 filename2 etc.]
vi  -O  *.js

More on split windows in Vim:

https://vimtricks.com/p/splitting-to-a-specific-size/
https://vimtricks.com/p/resize-splits/
https://vimtricks.com/p/vim-move-split/
https://www.baeldung.com/linux/vim-windows#:~:text=The%20Ctrl%2Bw%20%2Bs%20and,use%20Ctrl%2Bw%20%2Bn.

:edit (of :e) {filepath} Open a file (to the buffer) to edit
:read (of :r) {file path} Read in a copy of the specified file <file path> into the buffer and past to the cursor location, effectively writing that file into the document where the cursor is located. Can use absolute or relative (to the current file) paths.
:r!{command} Read in the results of the terminal command (eg. :r!ls to read in the current directory listing or :r!date to read in the current date and time).
:buffers / :ls View buffers listing
:b {buffername} Switch to the buffer
:bprev (of :bp) <leader>[ Go to previous buffer
:bnext (or :bn) <leader>] Go to next buffer
:{number}b / :b{number} / :bu{number} Go to the buffer by number
:bd Delete a buffer (close a file)
:split Open a horizontal split
:{number}split Open a horizontal split of {number} characters high (including ui elements)
:vsplit Open a vertical split
:{number}vsplit Open a vertical split of {number} characters wide (including ui elements)
:sp filename Open a file in a new buffer and split window
:next Navigate to next open file
:previous Navigate to previous open file
<Ctrl+w>s - Split windows
<Ctrl+w>w - switch between windows
<Ctrl+w>q - Quit a window
<Ctrl+w>v - Split windows vertically
<Ctrl+w>H moves the active split to a full-height split across the left
<Ctrl+w>J moves the active split to a full-width split across the bottom
<Ctrl+w>K moves the active split to a full-width split across the top
<Ctrl+w>L moves the active split to a full-height split across the right
{number}<Ctrl+w>< Decrease width of split by {number}
{number}<Ctrl+w>> Increase width of split by {number}
:{number}bd Delete (close) buffer {number} (current buffer if no number}
:{number}bw Wipeout buffer (like bd but more severe) {number} (current buffer if no number}
:only / :on Close the other buffers/tabs leaving the current one only open
:<Ctrl+f> Open up, and edit, the : command history. Can use vim commands to navigate and edit here. Enter to fire the command the cursor is under. Enter on the default blank or <Ctrl+c> to escape. This can be a preferrable option over using cursor up and down keys to navigate the : commands history.
/<Ctrl+f> or /<Ctrl+f> Open up, and edit, the / or ? command history. Can use vim commands to navigate and edit here. Enter to fire the find the cursor is under. Enter on the default blank or <Ctrl+c> to escape. This can be a preferrable option over using cursor up and down keys to navigate the / or ? commands history.


Assign local buffer hello the sting "world":

:let b:hello = "world"

Output local buffer hello:

:echo b:hello

When you see a variable that starts with a character and a colon it's describing a scoped variable.


Tabbing

:tabnew / :tabe Create a new tabset
{number}gt Go to tabset of {number}
gt / <leader>n Switch to right tabsets
gT / <leader>m Switch to left tabsets

https://superuser.com/questions/410982/in-vim-how-can-i-quickly-switch-between-tabs :

This is the easiest way that I found, to switch between tabs faster and simple. 
Add next lines to your .vimrc and enjoy it, more tricks about vim tabs here.

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

Now you can use Ctrl ← to go left and Ctrl → to go right.


Marks

:help marks Help on the Vim marks feature
:marks List bookmarks
:delmarks {mark/range} delete the mark or range of bookmarks a-z, A-Z (letters only)
m{lower case letter} Bookmark to local file
m{upper case letter} Bookmark across files
'{bookmark letter} Jump to that bookmark
`{bookmark letter} Jump to the specific column on the specific line bookmarked
`` Move the previous mark [jump back (to position in current buffer where jumped from)]
d`{bookmark letter} - Delete (copy to the clipboard) everything from the marked position {bookmark letter} to the cursor position

More on bookmarks in Vim:

https://vimtricks.com/p/bookmark-frequent-locations/

Macros

Macros let you record a series of ad-hoc commands that you can repeat to modify the file.

When starting to record a macro with q you will see the text 'recording' at the bottom of the window with any commands you enter assigned, in sequence, to the register {number|letter} until q is pressed again to end recording.

You can find out more about macros at: 

http://www.thegeekstuff.com/2009/01/vi-and-vim-macro-tutorial-how-to-record-and-play/

q{number|letter} Start (and end) the macro recording
@{number|letter} - Run the macro assigned to the {number|letter}
{number}@{number|letter} - Run the macro assigned to the {number|letter} {number of times}
@@ - repeat last macro

Editing existing register

1 - Output the macro:

"{number|letter}p Paste the {number|letter} macro on to a (blank) line

2 - Edit the macro text.

3 - Put the changed text back into the macro:

"{number|letter}y Yank the edited macro back to {number|letter}

Alternatively:

1 - Output the macro:

:echo @{number|letter}

2 - Select and copy the text (with the mouse).

3 - Paste and edit the changed text and put back into the macro:

:let @{number|letter}=‘{copied and edited text}’ <enter>



Other

Set background colour indicator to 80th column

:highlight ColorColumn ctermbg={colorvalue}
:call matchadd('ColorColumn','\%81v',100)


Open the .vimrc in a vertical split:

:vsp $MYVIMRC



Vim File Templates

Called ‘skeleton files’ in Vim, it provides a way to template files using Vim’s event scripting. See more at:

https://vimtricks.com/p/vim-file-templates/


Plugins

Need to look up on plugins. 
How to Write a Vim Plugin














—


Browser Plugin for VIM:


vimium
