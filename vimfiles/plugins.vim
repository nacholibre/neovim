call plug#begin('~/.config/nvim/plugged')
"Plug 'php-vim/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }
"Plug 'qbbr/vim-symfony'

" ncm2 autocomplete start
" assuming you're using vim-plug: https://github.com/junegunn/vim-plug
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
" ncm2 autocomplete end

" parameter expansion autocomplete ncm2 snippets
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" phpactor start
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php', 'tag': '0.17.1'}

" xcode like theme
Plug 'arzg/vim-colors-xcode'

" go lang
Plug 'darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' }

" causes issues
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" php-cs-fixer symfony
Plug 'stephpy/vim-php-cs-fixer'

" Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
" phpactor end

" Quickstart configurations for the Nvim LSP client
" https://github.com/neovim/nvim-lspconfig
" Plug 'neovim/nvim-lspconfig'

" ncm2 autocomplete plugins
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'} " javascript autocomplete
Plug 'nacholibre/ncm2-symfony', {'do': 'composer install', 'tag': '*'}
" Plug 'othree/csscomplete.vim' " css autocomplete
Plug 'ncm2/ncm2-cssomni' " css autocomplete

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" phpdoc plugin
Plug 'tobyS/vmustache' "plugin needed by pdv
Plug 'tobyS/pdv'
Plug 'SirVer/ultisnips' "snippets plugin needed by pdv

" phpdoc modded
" Plug 'Rican7/php-doc-modded'

Plug 'tpope/vim-pathogen'
Plug 'ciaranm/detectindent' " Automaticlly detect file indent style and try to adapt
Plug 'gmarik/Vundle.vim'
"Plugin 'bling/vim-airline'
"Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
"Plugin 'nvie/vim-flake8'
Plug 'jistr/vim-nerdtree-tabs'
"Plugin 'tpope/vim-fugitive'
"Plug 'Valloric/YouCompleteMe'
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

" Solarized color scheme
" set background=light
" let g:solarized_termcolors=256
colorscheme xcodelighthc

let g:ctrlp_map = '<c-r>'

" phpdoc config
let g:pdv_template_dir = $HOME ."/.config/nvim/plugged/pdv/templates_snip"
nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>

" other php doc plugin
" inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
" nnoremap <C-P> :call PhpDocSingle()<CR>
" vnoremap <C-P> :call PhpDocRange()<CR>

" python3 executable for the ncm2 autocomplete
" let g:python3_host_prog="/usr/bin/python3"

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
nmap <Leader>ot :call phpactor#GotoDefinition('tabnew')<CR>

"" Extract expression (normal mode)
"nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>
"
"" Extract expression from selection
"vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
"
"" Extract method from selection
"vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>
" php actor config end

" autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

"let g:ycm_autoclose_preview_window_after_completion = 0
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_key_invoke_completion = '<C-o>'
"let g:ycm_server_python_interpreter = '/usr/bin/python'

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

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" ncm2 snippets config
" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" c-j c-k for moving in snippet
let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

" phpactor bin config
let g:phpactorPhpBin = "/usr/local/Cellar/php@7.4/7.4.23/bin/php"

" Enable phpactor
" lua << EOF
" require'lspconfig'.phpactor.setup{}
" EOF

command! -bang -nargs=? -complete=dir Ag
    \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)
