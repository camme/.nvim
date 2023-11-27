vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.list = true
vim.opt.spelllang = en_us,sv
vim.opt.syn = auto
vim.opt.showmatch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true;
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.completeopt=menuone,noselect,preview


vim.opt.undodir = vim.fn.stdpath('config') .. '.undo'
vim.opt.undofile = true
vim.opt.wildignore = node_modules,dist,build
--vim.opt.backupdir = '~/.vim/backup'
--vim.opt.directory = '~/.vim/tmp'
vim.opt.background = dark
vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.inccommand = 'nosplit'
vim.opt.showmode = true
vim.opt.tags = './tags;/'

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.cmd('command W w')

vim.cmd('command Json set filetype=json | %!jq');

-- TABS
vim.keymap.set('n', '\'', '<Nop>')
vim.keymap.set('n', ';l', ':tabprevious<CR>')
vim.keymap.set('n', ';\'', ':tabnext<CR>')
vim.keymap.set('n', ';p', ':tabnew<CR>')

