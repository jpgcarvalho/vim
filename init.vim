" ----------------------------- Plugins ------------------
call plug#begin()
Plug 'https://github.com/terryma/vim-smooth-scroll'
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'sts10/vim-pink-moon'
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'preservim/nerdtree'

call plug#end()


"--------------- Theme -----------------
colorscheme gruvbox 
set background=dark

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }



" Bind JJ to ESC
ino jj <esc>

" ------------------General---------------------
set hidden
set number
set relativenumber
set inccommand=split

" --------------------------------------------

let mapleader="\<space>"
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


"--------------------------Scrolling-------------------
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>


"-------------------------NERDTREE-------------------
nnoremap <leader>b :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"  Close NERDTree after open a file
let NERDTreeQuitOnOpen=1

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
