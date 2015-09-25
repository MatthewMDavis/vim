set nocompatible

nnoremap <silent> <leader>. :exit<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
execute pathogen#infect()
execute pathogen#helptags()
let mapleader = ","
nnoremap <silent> <leader>. :exit<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

colorscheme solarized
set background=dark
syntax on
filetype plugin indent on
set clipboard=unnamed
set hidden
set title

source /Library/Python/2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set guifont=Source\ Code\ Pro\ Light\ for\ Powerline:h16
set encoding=utf-8
set backspace=indent,eol,start
set whichwrap+=h,l

set laststatus=2
" Using Powerline, no need to show default status mode
set noshowmode                                  

" remove default delay when ESCing from INSERT MODE - awesomeness
if ! has('gui_running')
  set timeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif


" upon hitting escape to change modes,
" send successive move-left and move-right
" commands to immediately redraw the cursor
inoremap <special> <Esc> <Esc>hl




