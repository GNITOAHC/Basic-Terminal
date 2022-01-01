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
As we install vim already in the earlier section, we are now  
setting up our vim-plug.  
## set up vim-plug
[Vim-plug](https://github.com/junegunn/vim-plug)
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
## set up .vimrc
just move the ```.vimrc```from directory ```setup-terminal-for-newbie``` to your home directory.  
Then, run ```PlugInstall``` install your every vim-plug.  
If you want to uninstall any vim-plug, just delete the vim-plug in your```.vimrc``` and run ```PlugClean```.  
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
First, run the following from your terminal:
```
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
git clone https://github.com/gpakosz/.tmux.git /path/to/oh-my-tmux
ln -s -f /path/to/oh-my-tmux/.tmux.conf ~/.tmux.conf
cp /path/to/oh-my-tmux/.tmux.conf.local ~/.tmux.conf.local
```
Second, replace the ```.tmux.conf``` with the one in the directory```set-up-terminal-for-newbie-MacOS```  
Last, replace ```.tmux.conf.local``` using the same way.  
