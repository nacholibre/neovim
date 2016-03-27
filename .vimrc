execute pathogen#infect()
set nocompatible

syntax on
filetype plugin on
filetype indent on

set omnifunc=syntaxcomplete#Complete

set rtp+=~/.vim/

runtime vimfiles/settings.vim
runtime vimfiles/mappings.vim
runtime vimfiles/plugins.vim
