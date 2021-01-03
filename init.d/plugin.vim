call plug#begin()

""""" VIM VISUAL """"""
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' |
	    \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'kien/ctrlp.vim'

"""""" Version Control """""
Plug 'tpope/vim-fugitive' " git commands within vim
Plug 'airblade/vim-gitgutter' " git changes on the gutter 

"""""" Mux - Vim integration """""
Plug 'christoomey/vim-tmux-navigator'


call plug#end()


""""" SETUP VISUAL """""
colorscheme onedark
let g:airline_theme='badwolf'
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

