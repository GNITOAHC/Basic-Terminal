/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# install brew
brew install vim
brew install tmux

# set vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#set vim-plug end

#set .vimrc
touch ~/.vimrc
# :set mouse=a
# :set backspace=2
# call plug#begin('~/.vim/plugged')
# Plug 'rafi/awesome-vim-colorschemes'
# Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
# Plug 'vim-airline/vim-airline'
# Plug 'vim-airline/vim-airline-themes'
# let g:airline_theme='papercolor'
# let g:airline#extensions#tabline#enabled = 1
# let g:airline#extensions#tabline#left_sep = ' '
# let g:airline#extensions#tabline#left_alt_sep = '|'
# let g:airline#extensions#tabline#formatter = 'jsformatter'
# call plug#end()
# colorscheme deus
#set .vimrc end

# set tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
git clone https://github.com/gpakosz/.tmux.git /path/to/oh-my-tmux
ln -s -f /path/to/oh-my-tmux/.tmux.conf ~/.tmux.conf
cp /path/to/oh-my-tmux/.tmux.conf.local ~/.tmux.conf.local
#set tmux end

#customize zsh
touch ~/.zshrc
# PS1="%n@%m %1~ %#"
# PROMPT='%F{cyan}%B%n%b^_^%f '
# type the command below after setting
# nano ~/.zshrc
#customize zsh end
