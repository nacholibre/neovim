call plug#begin('~/.config/nvim/plugged')
"Plug 'php-vim/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }
"Plug 'qbbr/vim-symfony'

" ncm2 autocomplete start
" assuming you're using vim-plug: https://github.com/junegunn/vim-plug
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
" ncm2 autocomplete end

" phpactor start
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

" Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
" phpactor end


Plug 'tpope/vim-pathogen'
Plug 'gmarik/Vundle.vim'
"Plugin 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
"Plugin 'nvie/vim-flake8'
Plug 'jistr/vim-nerdtree-tabs'
"Plugin 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
"Plugin 'Shougo/neocomplete.vim'
Plug 'jelera/vim-javascript-syntax'

Plug 'lukaszb/vim-web-indent'
Plug 'pangloss/vim-javascript'
Plug 'evidens/vim-twig'

Plug 'tpope/vim-surround'
Plug 'msanders/snipmate.vim'

" Plugin 'gregsexton/MatchTag'
" Plugin 'MarcWeber/vim-addon-mw-utils' # ne se znae dali drug plugin ne go izpolzva
" Plugin 'tomtom/tlib_vim' # ne se znae dali drug plugin ne go izpolzva
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'
Plug 'myhere/vim-nodejs-complete'
" Plugin 'blueyed/vim-diminactive'
" Plugin 'mattn/emmet-vim' " info https://code.google.com/p/zen-coding/
Plug 'christoomey/vim-tmux-navigator'

Plug 'itchyny/lightline.vim'

call plug#end()

" python3 executable for the ncm2 autocomplete
" let g:python3_host_prog=/path/to/python/executable/

" Nerdtree: autostart
" https://github.com/jistr/vim-nerdtree-tabs
let g:nerdtree_tabs_open_on_console_startup=0

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ }
      \ }

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpactor#Complete

" phpactor config start
" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>ot :call phpactor#GotoDefinitionTab()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>
" php actor config end

" autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_invoke_completion = '<C-o>'
let g:ycm_server_python_interpreter = '/usr/bin/python'

"let g:phpcomplete_php_binary = "php"
"let g:phpcomplete_index_composer_command = "composer"

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" let g:phpcomplete_index_composer_command = 'composer'
