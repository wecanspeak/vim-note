" [ VIM EDITOR ] ================================== {{{1
syntax on
colorscheme darkblue
set ruler
set showmode
set nu
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
"" omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
"" folding
nnoremap <F5> :setlocal foldmethod=syntax<CR>
nnoremap <F6> zO
nnoremap <F7> zC
"" copy & paste & cut
nnoremap <C-C> "ty
nnoremap <C-C><C-C> "tp
nnoremap x<C-X> "tx  " reserve <C-X> for auto completion
inoremap <C-C> <ESC>l"tyi
inoremap <C-C><C-C> <ESC>l"tpi
inoremap x<C-X> <ESC>l"txi " reserve <C-X> for auto completion
"" copy&paste lines cross vim instances
nnoremap <C-L> :w! ~/.vimbuffer 
nnoremap <C-L><C-L> :r ~/.vimbuffer
vnoremap <C-L> :w! ~/.vimbuffer 
vnoremap <C-L><C-L> :r ~/.vimbuffer

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
"" search result at center
nnoremap N Nzz
nnoremap n nzz
"" ESC mapping
inoremap jk <ESC>
"" tab switcher
nnoremap <C-h> gT
nnoremap <C-l> gt
"" adjust window size
nnoremap + <C-W>+
nnoremap - <C-W>-
nnoremap <C-j> <C-w>j<C-w>_
nnoremap <C-k> <C-w>k<C-w>_
"" remove trailing space
function TrimWhiteSpace()
	%s/\s*$//
    ''
endfunction
inoremap <F2> <ESC>:call TrimWhiteSpace()<CR>
" disable arrow key, enhace HJKL muscle memory
noremap <UP> <NOP>
noremap <DOWN> <NOP>
noremap <RIGHT> <NOP>
noremap <LEFT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <RIGHT> <NOP>
inoremap <LEFT> <NOP>
" set fold type
"autocmd BufNewFile,BufReadPost $MYVIMRC setlocal foldmethod=marker

" [ PLUGINS ] ===================================== {{{1
" pathogen ---------------------------------------- {{{2
execute pathogen#infect()
filetype plugin indent on
" taglist ----------------------------------------- {{{2
nnoremap <F3> :TlistToggle<CR>
" nerdtree ---------------------------------------- {{{2
nnoremap <F2> :NERDTreeToggle<CR>
" powerline --------------------------------------- {{{2
set t_Co=256
set term=xterm-256color
" CtrlP ------------------------------------------- {{{2
let g:ctrlp_map = '<c-f>'


" [ LANGUAGES ] =================================== {{{1
" CoffeeScript ------------------------------------ {{{2
"" auto ident
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"" auto compile
autocmd BufWritePost,FileWritePost *.coffee silent !coffee -c <afile> 


" [ UTILITIES ] =================================== {{{1
" cscope ------------------------------------------ {{{2
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


