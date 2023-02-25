-- lua/custom/mappings 
local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  -- n = {
  --     ["<leader>h"] = "",
  --     ["<C-s>"] = ""
  -- }
}

M.abc = {

  n = {
     ["<leader>fp"] = {"<cmd> Prettier <CR>", "Prettier format"},
     ["<leader>fe"] = {"<cmd> EslintFixAll <CR>", "EsLint Fix File"},
     ["<leader>ff"] = {"<cmd> Prettier <CR>", "Prettier + EsLint"},
     ["<leader>qa"] = {"<cmd> qa <CR>", "Quit all"},
     ["<leader>qq"] = {"<cmd> q <CR>", "Quit"},
  },

  i = {
    -- more keys!
  }
}

-- M.xyz = {
--   -- stuff
-- }

return M
