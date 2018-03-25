#!/usr/bin/env bash

root_path=/opt/coap/setup

vim_dot_path=$root_path/vim_dot
git clone https://github.com/fstakem/vim_dot $vim_dot_path
cp $vim_dot_path/.vimrc ~

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/edkolev/tmuxline.vim ~/.vim/bundle/tmuxline.vim

git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer