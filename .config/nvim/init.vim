
set encoding=utf-8
set laststatus=2
set autoread
set mouse=a
set number relativenumber
set conceallevel=2
set autoindent
set backspace=indent,eol,start
set smarttab

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

set nrformats-=octal
if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif

set incsearch
set hlsearch

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" augroup c
"     autocmd!
"     autocmd FileType c,cc,cpp,h,hpp,glsl call MakeRun()
" augroup end

" function! MakeRun()
"     nnoremap <C-e> :w | make -j8 <cr>
"     inoremap <C-e> <esc>:w | make -j8 <cr>
" endfunction

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mhinz/vim-startify'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/a.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tenfyzhong/vim-gencode-cpp'
Plug 'b3nj5m1n/kommentary'
" Initialize plugin system
call plug#end()

let g:rainbow_active = 1 "

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

let g:vimtex_view_method = 'zathura'

" autocmd vimenter * ++nested colorscheme gruvbox
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<nop>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
let g:vimspector_enable_mappings = 'HUMAN'
packadd! vimspector
syntax on
