# Lesson3: Vim

Vim is a free and open-source, screen-based text editor program, it's a improved version of vi.

## Install Vim

Run `brew install vim` in terminal to install vim. Or install it [other way](https://www.vim.org/download.php).  
After installing Vim, type `vim [target_file]` in your terminal to edit file.

## Normal mode

Normal mode is the default mode after opening vim editor.  
Press `:` to enter command mode.  
Press `i`, `I`, `a`, `A`, `o`, `O`, `s`, `S` to enter insert mode with different cursor positions.
Press `v`, `V`, `ctrl + v` to enter visual mode, visual line mode or visual block mode.
Press `<esc>` to escape any mode and get back to normal mode.

Normal mode commands:

```
Commands:
x       delete a character
d       delete
dd      delete a line
y       yank
p       paste
r       replace (follow by replace character)
c       cut (then place in insert mode)
Motions:
a       all
i       in
t       'til
f       find backward
F       find forward
Objects:
w       word
s       sentence
p       paragraph
$       end of line
0       start of line
```

Most of commands can be assemble like {command}{motion}{object} or {command}{motion}.  
Ex:

```
yiw     yank in word
ct)     cut until `)`
ri      replacee with `i`.
```

Some normal mode tips:

```
gd                      go to definition
``                      go to the last cursor position before jump
''                      go to the last cursor position before jump
gg                      go to the very front of the file
G                       go to the very end of the file
`<                      go to the last visual selected first charater
`>                      go to the last visual selected last charater
f[char]                 go to the character after cursor
F[char]                 go to the character before cursor
1<C-g>                  View full path to current file
```

Recording: 
```
qi                      Start recording 
q                       Stop recording 
[number]@i              Execute record 
```


## Command mode

Press `:` to enter command mode, `esc` to escape command mode.
Vim has 3 important features: buffer, window, and tab. We will introduce these below.

### Buffer:

```
:e [target_file]         open file in new buffer
:bn                      next buffer
:bp                      previous buffer
:bd                      delete buffer
```

`vim [target_file1] [target_file2]` will automatically open two file in two buffer.

### Window:

```
:sp                      split windows horizontally
:vsp                     split windows virtically
Ctrl-w + h               move cursor to the left window
Ctrl-w + j               move cursor to the lower window
Ctrl-w + k               move cursor to the upper window
Ctrl-w + l               move cursor to the right window
```

### Tab:

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

Some command mode tips:

```
/[target_string]<CR>    find target string in file, `n` to go to the next and `N` to go to the previous
```

## Visual mode

Press `v`, `V` or `ctrl+v` to enter visual mode.

```
v                       visual (character) mode, use hjkl to move cursor
V                       visual line mode, use jk to move
ctrl + v                visual block mode, use hjkl to move cursor
```

You can see these visual modes as a command in normal mode.  
Ex: `viw` or `vt)` to select in word or select until `)`.

After selecting target, use command in normal mode like `x` or `r` will act as expected.

## Other tips

1.  Three ways to go to a specific line (under normal mode):

    ```
    :[number]<Cr>
    [number]gg
    [number]G
    ```

2.  Increment number:
    Use Visual Block mode to select numbers, press `g<C-a>` to change numbers to increment numbers or `g<C-x>` to decrement numbers.  
    Example:

        ```
        <p>0<\p>
        <p>0<\p>
        <p>0<\p>
        (After selecting 0s and pressing g<C-a>, it'll be changed as following)
        <p>1<\p>
        <p>2<\p>
        <p>3<\p>
        ```

It could also be changed to 10, 20, 30 ... by pressing `10g<C-a>`.  

# Vim configuration

To customize your vim, make a `.vimrc` file under your home directory.

## Options

Vim applies lots of option to customize, some useful options are listed below.

```
set backspace=2		allow backspacing over everything in insert mode
set mouse=a	    	allow mouse in vim
set number	    	set number beside the line
set relativenumber 	set relative number beside
set wrap 	    	automatically wrap the line
set cursorline		highlight the current line
```

## Mapping

If there’s one feature of Vimscript that will let you bend Vim to your will more than any other, it’s the ability to map keys. Mapping keys lets you tell Vim:
When I press this key, I want you to do this stuff instead of whatever you would normally do.
(From [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com))

### Leader

Mapleader is a important feature in vim mapping, because in the mapping setting, you can use map leader to toggle most of your customize setting.  
`let mapleader = '\'` this is the default setting, now '\' is your leader key. It can be replace.

### Basic mapping and modal mapping

Basic mapping:  
`map - x` Now, when you press `-`, vim treat it as you press `x` on the keyboeard.  
`map <leader>v viw` if you press the leader key and `v`, vim will treat it as you press `viw`.

Modal mapping:
Adding mode character before `map` to restrict the mapping in certain mode.  
`n`, `i`, `v` for normal, insert, visual mode respectively.  
`nmap - x` When pressing `-`, vim will treat it as pressing `x` but only in normal mode.  
`imap` and `vmap` will act similar way but in different modes.

### Strict mapping

Add `nore` between mode character and `map` to make strict mapping, like `inoremap`: a strict mapping in insert mode.  
Why doing strict mapping?  
Strict mapping can prevent toggle something recursive, another is that their behavior can change if you install a plugin that maps keys they depend on. (From [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com))

```
nmap x dd       press `x` to delete a line
nmap | x        press `|` to do what `x` do, which is delete a line
nnoremap \ x    press `\` to delete a character instead of a line
```

> When should you use these nonrecursive variants instead of their normal counterparts?
> **Always.** > **No, seriously, _always._**
> -- _Steve Losh_

# Vim plugins

Vim is a text editor rather than an IDE. This means that almost all functionality is added via plugins. Plugins allow you unleash the full potential of Vim.
A vim-plugins manager is totally optional, but if you are considering having multiple plugins, a plugin manager could help you **track your plugins and keep your system clean**.  
There are lots of plugins manager to choose from. Most popular's managers are listed below:

1. [vim-plug](https://github.com/junegunn/vim-plug) : A lightweight and powerful manager that is easy to set up and use.
2. [pathogen.vim](https://github.com/tpope/vim-pathogen) : One of the oldest plugins, need to update your plugins manually.
3. [Vundle](https://github.com/VundleVim/Vundle.vim) : Inspired by pathogen.vim, it's great if are trying out new plugins.

Visit there github page for more details, and visit [Vim-awesome](https://vimawesome.com) for more powerful plugins!

For more info, please visit the [vim documentation](https://www.vim.org/docs.php).
