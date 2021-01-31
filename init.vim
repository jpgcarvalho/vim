" ----------------------------- Plugins ------------------
call plug#begin()
Plug 'https://github.com/terryma/vim-smooth-scroll'
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
call plug#end()


"--------------- Theme -----------------
colorscheme nord

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }



" JJ ESC
ino jj <esc>

" --------------------------------------------
set hidden
set number
set relativenumber
set inccommand=split

" --------------------------------------------

let mapleader="\<space>"
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


"Scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
