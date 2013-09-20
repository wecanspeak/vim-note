" pathogen.vim
execute pathogen#infect()
filetype plugin indent on

" vim editor
syntax on
set ruler
set showmode
set nu
set hlsearch
colorscheme darkblue

" tab switcher
nnoremap <C-h> gT
nnoremap <C-l> gt

" adjust window size
nmap + <C-W>+
nmap - <C-W>-
nmap } <C-w>>
nmap { <C-w><
nmap <C-j> <C-w>j<C-w>_
nmap <C-k> <C-w>k<C-w>_

" remove trailing space
function TrimWhiteSpace()
	%s/\s*$//
	''
:endfunction

map! <F2> :call TrimWhiteSpace()<CR>
