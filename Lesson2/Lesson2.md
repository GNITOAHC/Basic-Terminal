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
:e {target_file}         open file in new buffer
:bn                      for "next buffer"
:bp                      for "previous buffer"
:bd                      for "delete buffer"
```

2. Window:
```
:sp                      spliting windows horizontally 
:vsp                     split windows virtically
Ctrl-w + h               move to the left window
Ctrl-w + j               move to the lower window
Ctrl-w + k               move to the upper window
Ctrl-w + l               move to the right window
```

3. Tab:
```
```

## Visual mode


## Other tips
