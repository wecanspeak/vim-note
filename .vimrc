" pathogen.vim
execute pathogen#infect()
filetype plugin indent on

" vim editor
syntax on
set ruler
set showmode
set nu
colorscheme darkblue

" tab switcher
nnoremap <C-h> gT
nnoremap <C-l> gt

" adjust window size
nmap + <C-W>+
nmap - <C-W>-
nmap <Right> <C-w>>
nmap <Left> <C-w><
