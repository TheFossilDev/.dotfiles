-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

-- Telescope IGNORE
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
    file_ignore_patterns = {
      "node%_modules/.*"
    }
  },
}

-- Adding snippets from friendly snippets
require("luasnip.loaders.from_vscode").lazy_load()

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

vim.keymap.set('n', '<C->>', '<C-w>>')
vim.keymap.set('n', '<C-<>', '<C-w><')
vim.keymap.set('n', '<C-+>', '<C-w>+')
vim.keymap.set('n', '<C-->', '<C-w>-')


-- Add user commands
vim.api.nvim_create_user_command(
  'Vterm',
  function()
    vim.cmd("vsplit")
    vim.cmd("term")
  end,
  {}
)

vim.api.nvim_create_user_command(
  'Sterm',
  function()
    vim.cmd("split")
    vim.cmd("term")
  end,
  {}
)




