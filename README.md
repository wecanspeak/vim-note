Note some useful vim stuff.


## Plugins for source insight like
* [cscope](http://cscope.sourceforge.net/) - tag analyzer
* [ctags](http://ctags.sourceforge.net/) - tag analyzer
* [nerdtree](http://www.vim.org/scripts/script.php?script_id=1658) - directory tree
* [taglist](http://www.vim.org/scripts/script.php?script_id=273) - tag list
* [tagbar](https://github.com/majutsushi/tagbar) - tag list
* [srcexpl](http://www.vim.org/scripts/script.php?script_id=2179) - real time definition view
* [cctree](http://www.vim.org/scripts/script.php?script_id=2368) - call graph
* [mark](http://www.vim.org/scripts/script.php?script_id=2666) - multiple highlight
* [minibufexpl](https://github.com/fholgado/minibufexpl.vim?source=c) - show buffers (files) list

## Useful plugins
* [pathogen](https://github.com/tpope/vim-pathogen) - install plugin happily
* [powerline](https://github.com/Lokaltog/vim-powerline) - powerful status line
* [ctrlp](https://github.com/kien/ctrlp.vim) - find files quickly
* [snipmate](https://github.com/msanders/snipmate.vim) - snippet 
* [easymotion](https://github.com/Lokaltog/vim-easymotion?source=c) - let cursor move like mouse
* [matchtag](https://github.com/gregsexton/MatchTag) - highlight matched html tag
* [indent-guides](https://github.com/nathanaelkane/vim-indent-guides) - show indent lines
* [matchit](http://vim.sourceforge.net/scripts/script.php?script_id=39) - % jump between tags
* [syntastic](https://github.com/scrooloose/syntastic) - check syntax on the fly
* [vim-signature](https://github.com/kshenoy/vim-signature) - show marks
* [supertab](https://github.com/ervandew/supertab) - auto-complete

## Interesting plugins
* [vimwiki](https://github.com/vimwiki/vimwiki) - wiki like noting
* [calendar.vim](https://github.com/itchyny/calendar.vim) - calendar in vim

## Syntax
* [c.vim](http://www.vim.org/scripts/script.php?script_id=3064) - function highlight
* [taghighlight](https://bitbucket.org/abudden/taghighlight) - highlight class, types, etc.
* [vim-markdown](https://github.com/plasticboy/vim-markdown) - highlight markdown and some useful movement keystrokes

## Colorscheme
* [vivify](http://bytefluent.com/devify/) - online vim colorscheme generator
* [seoul256](https://github.com/junegunn/seoul256.vim)
* [xoria256](http://www.vim.org/scripts/script.php?script_id=2140)
* [Vim Color Scheme Test](https://code.google.com/p/vimcolorschemetest/)

## Language specific
### Javascript
* [jshint](https://github.com/wookiehangover/jshint.vim) - check javascript syntax


## Misc
### svn diff via vimdiff
1. Create `svndiff` as [svndiff](https://gist.github.com/wecanspeak/7940388), let it be executable.
2. Place `svndiff` to accessible location like `~/bin/svndiff` or `/usr/local/bin/svndiff`.
3. In `~/.subversion/config`, assign `diff-cmd` to `svndiff` path. 
4. Done, try it by `svn diff` command.

### build minimum friendly vim environment
* source [vimenv.sh](https://github.com/wecanspeak/vim-note/blob/master/vimenv.sh)
