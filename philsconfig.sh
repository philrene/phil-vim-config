#!/bin/sh

git submodule init
git submodule update


[ -z tmp ] || mkdir tmp
cd  tmp
git clone https://github.com/vim-scripts/pathogen.vim.git
[ -z ../.vim/autoload ] || mkdir ../.vim/autoload/
cp ./pathogen.vim/plugin/pathogen.vim ../.vim/autoload/pathogen.vim
cd ..
rm -rf tmp

cp -Rf .vim .vimrc ~/
