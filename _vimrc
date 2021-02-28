" my _vimrc

call plug#begin('C:\\Users\\nicol\\Desktop\\plugged')
Plug 'rafi/awesome-vim-colorschemes'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

filetype plugin indent on
source $VIMRUNTIME/vimrc_example.vim

set background=dark
set belloff=all
set guifont=Consolas:h20
autocmd GuiEnter * simalt ~x
set number
set clipboard=unnamed


colorscheme PaperColor

highlight cppSTLconstant guifg=#f50707
"highlight cNumbers guifg=#ff9900

" Files and Storage {{{
cd C:\Users\nicol\Desktop\info
set wildignore=*.exe
set undofile
set undodir=C:\Users\nicol\Desktop\tmp
set directory=C:\Users\nicol\Desktop\tmp
set backupdir=C:\Users\nicol\Desktop\tmp
set autoindent


set autoread
" }}}

nnoremap <F2> :bo 30vs %:r.in <bar> setlocal nonu nornu<CR>
nnoremap <F3> :bel sp%:r.out <bar> setlocal nonu nornu<CR>


inoremap {<CR> {<CR>}<Esc>O
autocmd filetype cpp inoremap <F9> <Esc>:wa <bar> :make %:r <bar> :%:r.exe<CR>
autocmd filetype cpp inoremap <F10> <Esc>:!%:r.exe<CR>
"Compile:
autocmd filetype cpp nnoremap <F9> :wa <bar> :make %:r <bar> :!%:r.exe<CR>
autocmd filetype cpp nnoremap <F10> :!%:r.exe<CR>
" vim: set foldmethod=marker
