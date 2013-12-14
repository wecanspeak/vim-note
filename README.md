Note some useful vim stuff.


## Plugins for source insight like
* [cscope](http://cscope.sourceforge.net/) - tag analyzer
* [ctags](http://ctags.sourceforge.net/) - tag analyzer
* [NERDTree](http://www.vim.org/scripts/script.php?script_id=1658) - directory tree
* [TagList](http://www.vim.org/scripts/script.php?script_id=273) - tag list
* [SrcExpl](http://www.vim.org/scripts/script.php?script_id=2179) - real time definition view
* [CCTree](http://www.vim.org/scripts/script.php?script_id=2368) - call graph
* [Mark](http://www.vim.org/scripts/script.php?script_id=2666) - multiple highlight

## Useful plugins
* [pathogen](https://github.com/tpope/vim-pathogen) - install plugin happily
* [powerline](https://github.com/Lokaltog/vim-powerline) - powerful status line
* [CtrlP](https://github.com/kien/ctrlp.vim) - find files quickly
* [snipmate](https://github.com/msanders/snipmate.vim) - snippet 
* [easymotion](https://github.com/Lokaltog/vim-easymotion?source=c) - let cursor move like mouse

## Syntax
* [c.vim](http://www.vim.org/scripts/script.php?script_id=3064) - function highlight
 
## Colorscheme
* [vivify](http://bytefluent.com/devify/) - online vim colorscheme generator
* [seoul256](https://github.com/junegunn/seoul256.vim)

## Misc
### svn diff via vimdiff
1. Create `svndiff` as [svndiff](https://gist.github.com/wecanspeak/7940388), let it be executable.
2. Place `svndiff` to accessible location like `~/bin/svndiff` or `/usr/local/bin/svndiff`.
3. In `~/.subversion/config`, assign `diff-cmd` to `svndiff` path. 
4. Done, try it by `svn diff` command.
