#!/bin/sh
 
# install plugin
## pathogen
echo -n "install pathogen ..."
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
echo " DONE"
cd ~/.vim/bundle
## nerdtree
echo -n "install nerdtree ..."
git clone https://github.com/scrooloose/nerdtree.git
echo " DONE"
## ctrlP
echo -n "install ctrlP ..."
git clone https://github.com/kien/ctrlp.vim.git
echo " DONE"
## airline
echo -n "install airline ..."
git clone https://github.com/bling/vim-airline.git
echo " DONE"
 
# install colorscheme
echo -n "get colorscheme seoul256 ..."
cd ~/.vim/bundle
git clone https://github.com/junegunn/seoul256.vim.git
echo " DONE"
 
cd ~
 
# update vimrc
echo -n "update .vimrc ..."
curl -Sso ~/.vimrc https://raw.github.com/wecanspeak/vim-note/master/.vimrc
echo " DONE"
