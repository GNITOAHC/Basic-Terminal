# brew-install
To install home brew on your mac, run the following from your terminal:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
## brew-install vim and tmux
```
brew install vim
brew install tmux
```
# Set vim plug
[Vim-plug](https://github.com/junegunn/vim-plug)
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
## set up .vimrc
just move the ```.vimrc```from directory ```setup-terminal-for-newbie``` to your home directory.  
Then, run ```PlugInstall``` install your every vim-plug.  
If you want to uninstall any vim-plug, just delete the vim-plug in your```.vimrc``` and run ```PlugClean```.  
### vim-plug I recommand
[Tmux yank plugin](https://github.com/tmux-plugins/tmux-yank/tree/master)
[Ctags](https://github.com/universal-ctags/ctags)  
[Tagbar](https://github.com/preservim/tagbar)  
[Awesome vim color](https://github.com/rafi/awesome-vim-colorschemes)  
[Nerd tree](https://github.com/scrooloose/nerdtree)  
[Vim airline](https://github.com/vim-airline/vim-airline)  
