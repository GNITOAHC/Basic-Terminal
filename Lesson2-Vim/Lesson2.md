# Lesson2: Vim
Vim is a free and open-source, screen-based text editor program, it's a improved version of vi.  

## Install Vim
Run `brew install vim` in terminal to install vim. [Make sure you already install Homebrew]  
After installing Vim, type `vim [target_file]` in your terminal to edit the file.  

## Normal mode
In normal mode, press `i`, `I`, `a`, or `A` to trigger Insert mode.  
press `i`, the cursor will be default placing at the front of present position.  
Press `I`, the cursor will be default placing at the front of the present line.  
Press `a`, the cursor will be default placing at the back of present position.  
Press `A`, the cursor will be default placing at the back of the present line.  

Normal mode is the default mode after opening vim editor, use `:q` to quit editing and `:w` to save changes to the file. 
Add `!` after command to force action. 
Vim has 3 important features: buffer, window, and tab. We will introduce these below.  
1. Buffer: 
```
:e [target_file]         open file in new buffer
:bn                      next buffer
:bp                      previous buffer
:bd                      delete buffer
```

2. Window:
```
:sp                      split windows horizontally 
:vsp                     split windows virtically
Ctrl-w + h               move cursor to the left window
Ctrl-w + j               move cursor to the lower window
Ctrl-w + k               move cursor to the upper window
Ctrl-w + l               move cursor to the right window
```

3. Tab:
```
:tabe [target_file]      open file in new tab 
:tabn                    go to next tab
gt                       go to next tab
:tabN                    go to previous tab
gT                       go to previous tab
:tabr                    go to first tab 
:tabl                    go to last tab
:tabs                    view all open tabs
```

## Visual mode
Press `v`, `V` or `ctrl+v` to enter visual mode.  
```
v                       visual (character) mode, use hjkl to move cursor
V                       visual line mode, use jk to move
ctrl + v                visual block mode, use hjkl to move cursor
```

After select target: 
```
d                       delete all selected, use `p` in normal mode to paste
c                       cut all selected, use `p` in normal mode to paste
y                       yank all selected, use `p` in normal mode to paste
r [target_character]    replace all selected character to target_character
```

## Other tips
Normal mode:
```
gd                      go to definition
``                      go to the last cursor position before jump
''                      go to the last cursor position before jump
/ [target_string]       find target string in file, `n` to go to the next and `N` to go to the previous
gg                      go to the very front of the file
G                       go to the very end of the file
`<                      go to the last visual selected first charater
`>                      go to the last visual selected last charater
```
For more info, please go to the [vim documentation](https://www.vim.org/docs.php). 
