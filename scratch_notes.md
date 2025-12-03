
WinLeave and WinEnter is for when splits/windows gain and lose focus.
Unfortunately you cannot effect the highlight (colors) of splits
independently in Vim ( Changing the highlight is always global and can't
be changed only for a scope. --
https://stackoverflow.com/questions/49301534/vim-highlight-setting-local )
setlocal doesn't work - I tried
Define functions to be called by the autocommands

" Action when a split loses focus
"autocmd WinLeave * call MyFocusLostFunction()

" Action when a split gains focus
"autocmd WinEnter * call MyFocusGainedFunction()

function! MyFocusLostFunction()
  " Put your commands here, for example:
  setlocal nonumber " Disable line numbers in unfocused window
  "hi StatusLineNC guibg=darkgrey " Change status line color for unfocused window
  setlocal highlight CursorLineNr ctermbg=darkgrey " Change status line color for unfocused window
  "echomsg "Focus lost from a split"
endfunction

function! MyFocusGainedFunction()
  " Put your commands here, for example:
  setlocal number " Enable line numbers in focused window
  setlocal highlight CursorLineNr ctermbg=blue " Change status line color for focused window
  echomsg "Focus gained by a split"
endfunction


