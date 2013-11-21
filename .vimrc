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
nmap <F5> :setlocal foldmethod=syntax<CR>
nmap <F6> zO
nmap <F7> zC
"" copy & paste & cut
map <C-C> "ty
map <C-C><C-C> "tp
map x<C-X> "tx  " reserve <C-X> for auto completion
imap <C-C> <ESC>l"tyi
imap <C-C><C-C> <ESC>l"tpi
imap x<C-X> <ESC>l"txi " reserve <C-X> for auto completion
"" enable and disable mouse use
set mouse=a
nnoremap <F4> :call ToggleMouse() <CR>
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
"" swap : & ;
nnoremap ; :
nnoremap : ;
"" search result at center
map N Nzz
map n nzz

" ===================
" debug print map key
" ===================
nmap g<C-D> oPRINTF("_ENZ_ %s %d\n",__FILE__,__LINE__);

" ============
" tab switcher
" ============
nnoremap <C-h> gT
nnoremap <C-l> gt

" ==================
" adjust window size
" ==================
nmap + <C-W>+
nmap - <C-W>-
nmap <C-j> <C-w>j<C-w>_
nmap <C-k> <C-w>k<C-w>_

" ==========================
" remove trailing whitespace
" ==========================
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
nnoremap <F3> :TlistToggle<CR>

" ========
" NERDTree
" ========
nnoremap <F2> :NERDTreeToggle<CR>

" ============
" CoffeeScript
" ============
" auto indent
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
" auto compile
autocmd BufWritePost,FileWritePost *.coffee silent !coffee -c <afile>
