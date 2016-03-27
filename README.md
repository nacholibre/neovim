    git clone git://github.com/nacholibre/Vimfiles.git ~/.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    cd ~/.vim
    git submodule init
    git submodule update
    
    cd ~/.vim/bundle/YouCompleteMe/
    git submodule update --init --recursive
    ./install.py
    
    rm -rf ~/.vim/bundle/snipmate.vim/snippets
