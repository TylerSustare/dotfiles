"" Fix backspace indent
set backspace=indent,eol,start

set number relativenumber
set ruler
syntax enable

" leader
let mapleader=","

" move to beginning/end
nnoremap <leader>e $
nnoremap <leader>b ^
noremap <leader>w <C-w><C-w>

" bells
set visualbell
set noerrorbells

" enable mouse
set mouse=a

" Clean search (highlight)
nnoremap <silent> <leader>c :noh<cr>

" Keep scroll from going to the bottom.
:set scrolloff=5

set clipboard=unnamedplus
set paste
