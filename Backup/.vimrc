:set  mouse=a 		#set the mouse on
:set backspace=2	#enable baskspace at insert mode
map <C-c> "+y<CR>
#press <Control+C> to yank anything to clipboard

call plug#begin('~/.vim/plugged')

Plug 'tmux-plugins/tmux-yank'

Plug 'universal-ctags/ctags'

Plug 'majutsushi/tagbar'
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

Plug 'rafi/awesome-vim-colorschemes'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'jsformatter'


call plug#end()


colorscheme deus