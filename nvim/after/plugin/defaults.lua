-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

-- Editor sets
vim.opt.relativenumber = true

-- GENERAL REMAPS
vim.keymap.set('n', '<C-s>', ":w<CR>")
vim.keymap.set('n', '<leader>q', ":q<CR>")

-- WINDOWS REMAPS
vim.keymap.set('n', '<C-t>', ":NERDTreeFocus<CR>")
vim.keymap.set('n', '<leader>tt', ":NERDTreeToggle<CR>")
vim.keymap.set('n', '<leader>tf', ":NERDTreeFind<CR>")

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
