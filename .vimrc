" [ VIM EDITOR ] ================================== {{{1
syntax on
set ruler
set showmode
set nu
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
"" indent
if has("autocmd")
    filetype on
    autocmd Filetype html,aspvbs,javascript,xml setlocal ts=2 sts=2 sw=2 expandtab
endif
filetype plugin on
"" folding
nnoremap <space> za
map <3-LeftMouse> za
"" copy & paste & cut
noremap <C-C> "ty
noremap <C-C><C-C> "tp
noremap x<C-X> "tx  " reserve <C-X> for auto completion
inoremap <C-C> <ESC>l"tyi
inoremap <C-C><C-C> <ESC>l"tpi
inoremap x<C-X> <ESC>l"txi " reserve <C-X> for auto completion
"" copy&paste lines cross vim instances
nnoremap <C-L> :w! ~/.vimbuffer<CR>
nnoremap <C-L><C-L> :r ~/.vimbuffer<CR>
vnoremap <C-L> :w! ~/.vimbuffer<CR>
vnoremap <C-L><C-L> :r ~/.vimbuffer<CR>
"" scoll in insert mode
inoremap <C-E> <C-X><C-E>
inoremap <C-Y> <C-X><C-Y>
"" enable and disable mouse use
set mouse=a
nnoremap <F5> :call ToggleMouse() <CR>
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
nnoremap <RIGHT> <C-W>>
nnoremap <LEFT> <C-W><
"" remove trailing space
function TrimWhiteSpace()
	%s/\s*$//
    ''
endfunction
inoremap <F2> <ESC>:call TrimWhiteSpace()<CR>
" disable arrow key, enhace HJKL muscle memory
noremap <UP> <NOP>
noremap <DOWN> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <RIGHT> <NOP>
inoremap <LEFT> <NOP>
" set fold type
"autocmd BufNewFile,BufReadPost $MYVIMRC setlocal foldmethod=marker
" quick edit
nnoremap <leader>hh :exec "vertical help ".expand("<cword>")<CR>
nnoremap <leader>rr :vs $MYVIMRC<CR>
" typo
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Xa xa<bang>
command! -bang XA xa<bang>
" show invisibles
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\
" buffer traverse
nnoremap <F9> :bn<CR>
nnoremap <F10> :bp<CR>
" copy to clipboard
vnoremap <C-y> "+y

" [ PLUGINS ] ===================================== {{{1
" fugitive ---------------------------------------- {{{2
nnoremap <leader>gl :Glog -- %<CR>
" pathogen ---------------------------------------- {{{2
execute pathogen#infect()
filetype plugin indent on
" taglist ----------------------------------------- {{{2
nnoremap <F3> :TlistToggle<CR>
" tagbar ------------------------------------------ {{{2
nnoremap <F4> :TagbarToggle<CR>
" nerdtree ---------------------------------------- {{{2
nnoremap <F2> :NERDTreeToggle<CR>
" CtrlP ------------------------------------------- {{{2
let g:ctrlp_map = '<c-f>'
let g:ctrlp_working_path_mode = 'rw'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/*.o
" colorscheme ------------------------------------- {{{2
colorscheme seoul256


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
nnoremap <C-N> :cnext<CR>zz
nnoremap <C-P> :cprev<CR>zz
endif


