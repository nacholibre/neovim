local map = vim.keymap.set

-- Faster scrolling
map('n', 'J', '5j')
map('n', 'K', '5k')
map('x', 'J', '5j')
map('x', 'K', '5k')

-- Resize windows
map('n', '<left>', '<C-w><')
map('n', '<right>', '<C-w>>')
map('n', '<up>', '<C-w>-')
map('n', '<down>', '<C-w>+')

-- Remove trailing whitespaces
map('n', '<Leader>rw', ':%%s/\\s\\+$//e<CR>', { noremap = true, silent = true })

-- Remove ^M at the end of a line
map('n', '<Leader>rm', ':%%s/\\r//g<CR>', { noremap = true, silent = true })

-- Bind nohl (remove highlight of last search)
map({'n', 'v', 'i'}, '<C-n>', ':nohl<CR>', { noremap = true, silent = true })

-- Quicksave command
map({'n', 'v', 'i'}, '<Leader>s', '<Esc>:update<CR>', { noremap = true, silent = true })

-- Quick quit commands
map('n', '<Leader>e', ':quit<CR>', { noremap = true, silent = true })
map('n', '<Leader>E', ':qa!<CR>', { noremap = true, silent = true })

-- Window navigation with Alt + hjkl
-- not sure this is used
map('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<A-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<A-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })

-- Nerdtree: toggle
-- map('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- fzf
map('n', '<Leader>fif', ':Ag<CR>', { noremap = true, silent = true })
map('n', '<Leader>gf', ':GFiles<CR>', { noremap = true, silent = true })
