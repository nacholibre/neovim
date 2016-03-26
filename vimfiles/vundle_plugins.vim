" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-pathogen'
Plugin 'gmarik/Vundle.vim'
"Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'jelera/vim-javascript-syntax'

Plugin 'lukaszb/vim-web-indent'
Plugin 'pangloss/vim-javascript'
Plugin 'evidens/vim-twig'

Plugin 'tpope/vim-surround'
Plugin 'msanders/snipmate.vim'

" Plugin 'gregsexton/MatchTag'
" Plugin 'MarcWeber/vim-addon-mw-utils' # ne se znae dali drug plugin ne go izpolzva
" Plugin 'tomtom/tlib_vim' # ne se znae dali drug plugin ne go izpolzva
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'
Plugin 'myhere/vim-nodejs-complete'
" Plugin 'blueyed/vim-diminactive'
" Plugin 'mattn/emmet-vim' " info https://code.google.com/p/zen-coding/
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()
