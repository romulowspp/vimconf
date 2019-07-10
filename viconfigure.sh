#!/bin/bash

VIM_CONF_DIR=~/.vimrc

echo "set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=80" > $VIM_CONF_DIR

VUNDLE_DIR=~/.vim/bundle/Vundle.vim

rm -rf $VUNDLE_DIR
git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR

echo "set nocompatible
filetype off
set number

set rtp+=$VUNDLE_DIR

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'leafgarland/typescript-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'dracula/vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'digitaltoad/vim-pug'
Plugin 'plasticboy/vim-markdown'

call vundle#end()

filetype plugin indent on
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|.git\|platforms\|hooks'

syntax on
color dracula" >> $VIM_CONF_DIR

npm install -g typescript

vim +PluginInstall +qall
