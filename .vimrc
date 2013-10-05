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
set nowrap
"" omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
"" folding
nmap <F5> :setlocal foldmethod=syntax <CR>
nmap <F6> zO
nmap <F7> zC
"" copy & paste & cut
map <C-C> "ty
map <C-V> "tp
map x<C-X> "tx  " reserve <C-X> for auto completion
imap <C-C> <ESC>l"tyi
imap <C-V> <ESC>l"tpi
imap x<C-X> <ESC>l"txi " reserve <C-X> for auto completion
"" enable and disable mouse use
set mouse=a
map <F4> :call ToggleMouse() <CR>
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=
        set nonumber
        echo "Mouse usage disabled"
    else
        set mouse=a
        set number
        echo "Mouse usage enabled"
    endif
endfunction


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

" ======
" cscope
" ======
if has("cscope")
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
map <F3> :TlistToggle<CR>

" ========
" NERDTree
" ========
map <F2> :NERDTreeToggle<CR>
