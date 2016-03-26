"execute pathogen#infect()
set nocompatible

syntax on

runtime vimfiles/settings.vim
runtime vimfiles/mappings.vim

filetype off
runtime vimfiles/vundle_plugins.vim
filetype plugin on
filetype indent on

runtime vimfiles/plugins.vim
