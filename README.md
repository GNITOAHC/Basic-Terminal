# Link
[Brew](https://github.com/GINTOAHC/setup-terminal-MacOS/blob/main/README.md#brew-install)  
[Vim](https://github.com/GINTOAHC/setup-terminal-MacOS/blob/main/README.md#setup-vim)  
[Tmux](https://github.com/GINTOAHC/setup-terminal-MacOS/blob/main/README.md#setup-tmux)  
[Zsh](https://github.com/GINTOAHC/setup-terminal-MacOS/blob/main/README.md#customizing-zsh)  
# Brew-install
To install home brew on your mac, run the following from your terminal:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
## brew-install vim and tmux
To install home vim and tmux, run the following from your terminal:
```
brew install vim
brew install tmux
```
# Setup Vim
As we install vim already in the earlier section, we are now setting up our vim-plug.  
## set up vim-plug
The entire [Vim-plug](https://github.com/junegunn/vim-plug) introduction.  
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
## set up .vimrc
Just move the ```.vimrc```from directory ```setup-terminal-MacOS``` to your home directory.  
Then, run ```:PlugInstall``` in ```.vimrc``` to install your every vim-plug.  
If you want to uninstall any vim-plug, just delete the vim-plug in your```.vimrc``` and run ```:PlugClean```.  
### vim-yank-tip
After highlight the line in vim(Press ```v``` or ```V``` in normal mode), press ```<C-c>```(Control + C) to copy line in to Mac system clipboard.  
Use ```:w !pbcopy``` to copy the whole file.  Use ```:r !pbpaste``` to paste after the cursor.  
Use ```pbpaste > target_file.txt``` to paste whatever is in your clipboard into the target file.  
Use ```pbcopy < target_file.txt``` to copy the file into the clipboard.  
## vim-plug I recommand
These are the vim-plug I recommand and plug inside the ```.vimrc```  
[Tmux yank plugin](https://github.com/tmux-plugins/tmux-yank/tree/master)
[Ctags](https://github.com/universal-ctags/ctags)  
[Tagbar](https://github.com/preservim/tagbar)  
[Awesome vim color](https://github.com/rafi/awesome-vim-colorschemes)  
[Nerd tree](https://github.com/scrooloose/nerdtree)  
[Vim airline](https://github.com/vim-airline/vim-airline)  
## See more vim-plug
See more vim-plug [here](https://vimawesome.com).
# Setup Tmux
As we install tmux already in the earlier section, we are now  
setting up our ```tmux.conf```and ```tmux.comf.local```.  
    
[This](https://github.com/gpakosz/.tmux) is the Tmux setting I use.  
    
First, run the following from your terminal: (Install these in your home directory)
```
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```
```
cd ~
git clone https://github.com/gpakosz/.tmux.git /path/to/oh-my-tmux
ln -s -f /path/to/oh-my-tmux/.tmux.conf ~/.tmux.conf
cp /path/to/oh-my-tmux/.tmux.conf.local ~/.tmux.conf.local
```
Second, replace the ```.tmux.conf``` with the one in the directory```set-up-terminal-MacOS```  
    
Last, replace ```.tmux.conf.local``` using the same way.(This is my customize .tmux.conf.local)  
    
You can [customize](https://github.com/gpakosz/.tmux#configuration) your```~/.tmux.conf.local``` copy.  
## Tmux-plugins
The only tmux-plugin I use is [tmux-yank](https://github.com/tmux-plugins/tmux-yank).  
# Customizing zsh
Move the file ```.zshrc``` to your home directory and customize it yourself.
## Recommand websites 
These are the websites you can refer to  
[Make Use Of(MUO)](https://www.makeuseof.com/customize-zsh-prompt-macos-terminal/)  
[Scripting OS X](https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/)  
