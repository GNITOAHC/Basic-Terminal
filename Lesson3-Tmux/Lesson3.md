# Lesson3 Tmux
Tmux is an open-source terminal multiplexer for Unix-like operating systems.
Notable features are :
- Menus for interactive selection of running sessions, windows or clients
- Window can be linked to an arbitrary number of sessions[4]
- vi-like or Emacs command mode (with auto completion) for managing tmux[5]
- Lack of built-in serial and telnet clients.[3]
- Different command keys—it is not a drop-in replacement for screen, but can be configured to use compatible keybindings
- Vertical and horizontal Window split support  
(From [Wiki](https://en.wikipedia.org/wiki/Tmux))

## Installation
If you install brew in the previous lesson, you can install tmux simply by running `brew install tmux`
Or, see the tmux's [github](https://github.com/tmux/tmux) and install it manually.

## Basic concepts of tmux 
Tmux is a terminal multiplexer, to toggle or enable tmux, you'll need to create a tmux session. Session holds one or more windows, and windows holds one or more panes.  
Tmux has a special key called "prefix key", it was default as ctrl-b, while it is common to bind prefix key to C-a(ctrl a).  
Prefix key can do almost everything in tmux session, we'll introduce them in the following.  

## Session
```
Creating: 
tmux			create a new tmux session, the session will be named default by increasing numbers
tmux new -s [name]	create a new tmux session with specified name
Managing: 
tmus ls			list all tmux session that's running in background
tmux a -t [name] 	attach the session you've created (a stand for attach)
```
```
Rename session: 
tmux rename-session -t [oldName] [newName]	rename the session
tmux kill-session -t [sessionName]		kill the target session
tmux kill-session -a 				kill all session
```
## Windows
```
<prefix>c		create a new window 
<prefix>n		change to the next window 
<prefix>p		change to the previous window 
<prefix>[number]	change to the acordding window (the number of window will be list on the airline)
<prefix>x		kill the window
```

## Panes
```
<prefix>%		split window vertical with new pane
<prefix>"		split window horizontal with new pane
exit			kill pane, if the pane is the only one in that window, kill the window automatically; 
			if the window is the only window in that session, kill the session automatically
<prefix><space> 	rearrange the panes
<prefix>h		go to the left pane
<prefix>j		go to the lower pane
<prefix>k		go to the upper pane
<prefix>l		fo to the left pane
<prefix>{		move current pane left 
<prefix>}		move current pane right
<prefix><Ctrl+arrow>	resize current pane (hold the ctrl key while tapping arrow keys)
```

## Other tips
```
<prefix>d		detach the session, use `tmux a -t` to attach next time
<prefix>[		enable scroll mode, croll with hjkl just like doing in the vim, press `q` to leave
<prefix>!		convert current pane into a new window
```
