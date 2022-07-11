# Lesson3.5 Advanced Vim
To customize your vim, make a file `.vimrc` under your home directory, ans customize it. 
In `.vimrc` you can map your own key for specific purposes, or set your own ideal setting. We will discuss in the following.  

## Creating Vimrc files
In Linux or MacOS environment, `cd ~` to your home directory and create a file called `.vimrc` if it doesnt exist.  
If it doesnt exist, `touch ~/.vimrc` to create one.  

## Basic setting
```
set backspace=2		allow backspacing over everything in insert mode
set mouse=a		allow mouse in vim
set number		set number beside the line
set relativenumber 	set relative number beside
set wrap 		vim will automatically wrap the line
set cursorline		highlight the current line
```
More options can be found in [vim documentation](https://www.vim.org/docs.php)

## Leader 
Mapleader is a important feature in vim mapping, because in the mapping setting, you can use map leader to toggle most of your customize setting.  
```
let mapleader = '\'	this is the default setting, now '\' is your leader key. It can be replace.  
```
We will discuss this in the following.  

## Mapping
### Basic Mapping
If there’s one feature of Vimscript that will let you bend Vim to your will more than any other, it’s the ability to map keys. Mapping keys lets you tell Vim:
When I press this key, I want you to do this stuff instead of whatever you would normally do.
(From [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com))
```
Ex: 
map - x			now, when you press '-', vim treat it as you press 'x' on the keyboeard.  
map <leader>v viw	if you press the leader key and 'v', vim will treat it as you press viw. 
```

### Modal Mapping 
Add `n`, `i` or `v` in front of `map` to make the mapping enable only in certain mode.  
```
nmap - dd		now pressing `-` to delete the whole line is only enable at normal mode
			pressing `-` in insert mode will happen nothing else but add a '-' in your file
```
`imap`, `vmap` will do the similar thing but in different modes.  

### Strict Mapping
Add `nore` between mode character and `map` to make strict mapping, like `inoremap`: a strict mapping in insert mode.  
Why doing strict mapping?  
Strict mapping can prevent toggle somthing recursive, another is that their behavior can change if you install a plugin that maps keys they depend on. (From [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com))
```
nmap x dd 		press `x` to delete a line 
nmap | x		press `|` to do what `x` do, which is delete a line 
nnoremap \ x 		press `\` to delete a character instead of a line 
```
> When should you use these nonrecursive variants instead of their normal counterparts?
> __Always.__
> __No, seriously, *always.*__
> -- *Steve Losh*	
