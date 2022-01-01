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
just move the ```.vimrc```from directory ```setup-terminal-for-newbie``` to your home directory
Then, run ```PlugInstall``` install your every vim-plug.
If you want to uninstall any vim-plug, just delete the vim-plug in your```.vimrc``` and run ```PlugClean```.
