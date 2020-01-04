`git clone git://github.com/nacholibre/neovim.git ~/.config/nvim`

Install Vim Plug, for NeoVim run

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Open neovim and type `:PlugInstall` to install plugins

Install neovim python module
```
python3 -m pip install pynvim
```

Run `~/.config/nvim/plugged/YouCompleteMe/install.py` to install YouCompleteMe plugin
