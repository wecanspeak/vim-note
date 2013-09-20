" pathogen.vim
call pathogen#infect()
syntax on
filetype plugin indent on

" vim editor
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
