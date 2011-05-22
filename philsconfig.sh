#!/bin/sh


[ -z tmp ] || mkdir tmp
cd  tmp
git clone https://github.com/vim-scripts/pathogen.vim.git
cp ./pathogen.vim/plugin/pathogen.vim ../.vim/autoload/pathogen.vim
cd ..
rm -rf tmp
