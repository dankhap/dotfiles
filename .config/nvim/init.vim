set encoding=utf-8
set nu rnu
set mouse=a

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'crusoexia/vim-monokai'
Plug 'b3nj5m1n/kommentary'
" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'mhinz/vim-startify'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()
source $HOME/.config/nvim/plug-config/coc.vim

"fzf mappings
map <C-L> :noh<CR>
map <C-P> :GFiles<CR>
map <S-TAB> :Buffers<CR>

"monokai theme setup
" syntax on
" colorscheme monokai
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers


let g:vimspector_enable_mappings = 'HUMAN'

packadd! vimspector
