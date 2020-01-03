" Faster scrolling:
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" Resize windows
nnoremap <left>  <c-w><
nnoremap <right> <c-w>>
nnoremap <up>    <c-w>-
nnoremap <down>  <c-w>+

" Remove trailing whitespaces map
nnoremap <Leader>rw :%s/\s\+$//e<CR>

" Remove ^M at the end of a line
nnoremap <Leader>rm :%s/\r//g<CR>

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command
noremap <Leader>s <Esc>:update<cr>
vnoremap <Leader>s <Esc>:update<cr>
inoremap <Leader>s <Esc>:update<cr>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
" Better window navigation
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Nerdtree: toggle
map <C-t> :NERDTreeToggle<CR>


" dont know what is this
"nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
"nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
"nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
"nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
