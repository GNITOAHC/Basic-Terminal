# Lesson5 Tmux

Tmux is an open-source terminal multiplexer for Unix-like operating systems.
Notable features are :

- Menus for interactive selection of running sessions, windows or clients
- Window can be linked to an arbitrary number of sessions
- vi-like or Emacs command mode (with auto completion) for managing tmux
- Lack of built-in serial and telnet clients.
- Different command keys—it is not a drop-in replacement for screen, but can be configured to use compatible keybindings
- Vertical and horizontal Window split support  
  (From [Wiki](https://en.wikipedia.org/wiki/Tmux))

## Installation

Install with [homebrew](https://brew.sh) by `brew install tmux` or install it [manually](https://github.com/tmux/tmux#installation).

## Basic concepts of tmux

Tmux is a terminal multiplexer, to toggle or enable tmux, you'll need to create a tmux session. Session holds one or more windows, and windows holds one or more panes.  
Tmux has a special key called **_prefix key_**, it was default as ctrl-b, while it is common to bind prefix key to C-a(ctrl a).  
Prefix key can do almost everything in tmux session, we'll introduce them in the following.

### Session

```bash
Creating:
tmux			    # create a new tmux session, the session will be named default by increasing numbers
tmux new -s [name]	# create a new tmux session with specified name

Managing:
tmus ls			    # list all tmux session that's running in background
tmux a -t [name] 	# attach the session you've created (a stand for attach)
tmux rename-session -t [oldName] [newName]	# rename the session
tmux kill-session -t [sessionName]		    # kill the target session
tmux kill-session -a 				        # kill all session
```

### Windows

```bash
<prefix>c		# create a new window
<prefix>n		# change to the next window
<prefix>p		# change to the previous window
<prefix>x		# kill the window
<prefix>[number]	# change to the according window (the number of window will be list on the airline)
```

### Panes

```
<prefix>%		# split window vertical with new pane
<prefix>"		# split window horizontal with new pane
exit			# kill pane
<prefix><space> # rearrange the panes
<prefix>h		# go to the left pane
<prefix>j		# go to the lower pane
<prefix>k		# go to the upper pane
<prefix>l		# fo to the left pane
<prefix>{		# move current pane left
<prefix>}		# move current pane right
<prefix><Ctrl+arrow>	# resize current pane (hold the ctrl key while tapping arrow keys)
```

### Command Mode

Press `<prefix>:` to enter command mode in tmux. These are some useful command:

```bash
swap-windows -s [num1] -t [num2] 	# swap num1 window with num2 window
swap-windows -t -1 			        # move current window left by 1 position
new					                # start a new session
new -s [sessionName]			    # start a new session with assigned name
a -t [sessionName]			        # attach another session, a stands for attach
```

## Configuration

To customize your tmux, edit your `.tmux.conf` file under home directory.

### Options

Tmux applies lots of options to customize, some useful options are listed below.
`-g` flag indicates global sessions.

```bash
set -g mouse on     # Enable mouse click
set -g prefix C-a   # Make prefix to Ctrl-a
set -g status-position top  # Move status bar to the top
set -g renumber-windows on  # Auto renumber windows when one is closed
```

### Bindings

Bind commands can bind complicated commands into single hotkey, while you should hit prefix before pressing any key you bind.  
Ex: `bind X confirm-before kill-session` hit `<prefix>X` to trigger the command.  
Below are some personal configuration, to see more tips and details, visit [Linux manual page](https://man7.org/linux/man-pages/man1/tmux.1.html#KEY_BINDINGS).

```bash
bind X confirm-before kill-session              # Kill session after confirming
bind -r n swap-window -t +1 \; next-window      # Move window one right
bind -r p swap-window -t -1 \; previous-window  # Move window one left
bind -r C-h previous-window                     # Select previous window
bind -r C-l next-window                         # Select next window
```

## Plugins

First, we need to install [tpm](https://github.com/tmux-plugins/tpm) -> Tmux plugin manager.  
Then we can plug what we need simply by adding `set -g @plugin`.

### Installation of tpm

1. Clone tpm

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

2. Setup `.tmux.conf`

```bash
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

3. Reload tmux

```bash
# type this in terminal if tmux is already running
tmux source ~/.tmux.conf
```

### Plugins

After installing tpm, you can add new plugins by adding `set -g @plugin ...` to `.tmux.conf`.  
Ex:

```bash
# set -g @plugin 'github_username/plugin_name'
set -g @plugin 'tmux-plugins/tmux-yank'
```

To install, uninstall or update plugins, see the [tpm doc](https://github.com/tmux-plugins/tpm/blob/master/README.md#key-bindings)'s default key bindings.  
Or bind these key strokes yourself.

```bash
# tpm
set -g @tpm-install 'I'     # <prefix>I to install listed plugins
set -g @tpm-update  'U'     # <prefix>U to update installed plugins
set -g @tpm-clean   'C'     # <prefix>C to clean plugins which is not listed
```

See more plugins at [awesome-tmux](https://github.com/rothgar/awesome-tmux).

## Other tips

```bash
<prefix>s 		# list all session
<prefix>d		# detach the session, use `tmux a -t` to attach next time
<prefix>[		# enable scroll mode, croll with hjkl just like doing in the vim, press `q` to leave
<prefix>!		# convert current pane into a new window
```

For more info visit [tmux doc](https://man7.org/linux/man-pages/man1/tmux.1.html) or [tmux cheatsheet](https://tmuxcheatsheet.com).
