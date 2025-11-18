#Temporary Notes file for Tmux Application

brew install tmux

Example usage:

tmux ls - list sessions

tmux kill-session -t name -> kill session

Panes:

(Default toggle for tmux is Ctrl + b , you can also change it if you want to.)

https://medium.com/@tnvo/my-terminal-set-up-f6fa8d56e53

%           horizontal split
"           vertical split
o           swap panes
q           show pane numbers
x           kill pane
<space>     toggle between layouts

So for example:

Ctrl b % - horizontal split
Ctrl b n — verticle split
Ctrl b z — zoom in and out

TMUX Configuration file created with:

~/.tmux.conf

Could probably make this a symlink to a file in a repo (like this .vim repo)

YouTube short about configuring TMUX:

https://youtube.com/shorts/PL1EoKjy4iM?si=dEmdiKDjioqY8eAH
