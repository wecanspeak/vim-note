" ============
" pathogen.vim
" ============
execute pathogen#infect()
filetype plugin indent on

" ==========
" vim editor
" ==========
syntax on
set ruler
set showmode
set nu
set hlsearch
colorscheme darkblue
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"" omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" ===================
" debug print map key
" ===================
nmap g<C-D> oPRINTF("_ENZ_ %s %d\n",__FILE__,__LINE__);

" ============
" tab switcher
" ============
nnoremap <C-h> gT
nnoremap <C-l> gt
nnoremap <C-tab> :tabnext<CR>

" ==================
" adjust window size
" ==================
nmap + <C-W>+
nmap - <C-W>-
nmap } <C-w>>
nmap { <C-w><
nmap <C-j> <C-w>j<C-w>_
nmap <C-k> <C-w>k<C-w>_

" =====================
" remove trailing space
" =====================
function TrimWhiteSpace()
	%s/\s*$//
    ''
endfunction

map! <F2> :call TrimWhiteSpace()<CR>

" ==================================
" highlight class and function names
" ==================================
syn match    cCustomParen    "(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope

hi def link cCustomFunc  Function
hi def link cCustomClass Function


" ======
" cscope
" ======
if has("cscope")
set csprg=/usr/bin/cscope8a
set csto=0
set cst
set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
set csverb
set cscopetag
set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-

"" Find C symbol and calling function
map g<C-]> :cs find c <C-R>=expand("<cword>")<CR><CR>
map g<C-\> :cs find s <C-R>=expand("<cword>")<CR><CR>
endif

" =======
" taglist
" =======
"let Tlist_Auto_Open = 1
