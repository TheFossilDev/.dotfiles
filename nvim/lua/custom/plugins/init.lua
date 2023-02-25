return {
  -- We are just modifying lspconfig's packer definition table
  -- Put this in your custom plugins section i.e M.plugins field 
  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require("nvim-ts-autotag").setup { enable = true }
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    config = function()
      require "null-ls"
    end,
  },
  ["MunifTanjim/prettier.nvim"] = {
    config = function()
      -- require("prettier")
    end

  },
  ["abecodes/tabout.nvim"] = {
    config = function()
      require "tabout"
    end,
      wants = {'nvim-treesitter'},
  }
}
