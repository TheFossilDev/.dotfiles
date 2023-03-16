--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
local config = {
  -- set vim options here (vim.<first_key>.<second_key> = value)
  options = {
    opt = {
      -- set to true or false etc.
      relativenumber = true, -- sets vim.opt.relativenumber
      number = true, -- sets vim.opt.number
      -- spell = false, -- sets vim.opt.spell
      -- signcolumn = "auto", -- sets vim.opt.signcolumn to auto
      -- wrap = false, -- sets vim.opt.wrap
    },
  },
  -- Set dashboard header
  header = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
    -- " █████  ███████ ████████ ██████   ██████",
    -- "██   ██ ██         ██    ██   ██ ██    ██",
    -- "███████ ███████    ██    ██████  ██    ██",
    -- "██   ██      ██    ██    ██   ██ ██    ██",
    -- "██   ██ ███████    ██    ██   ██  ██████",
    -- " ",
    -- "    ███    ██ ██    ██ ██ ███    ███",
    -- "    ████   ██ ██    ██ ██ ████  ████",
    -- "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
    -- "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
    -- "    ██   ████   ████   ██ ██      ██",
  },
  -- COLORS
  -- colorscheme = "dracula",
  --
  -- plugins = {
  --   init = {
  --     {
  --       "Mofiqul/dracula.nvim",
  --       as = "dracula",
  --       config = function()
  --         require("dracula").setup {}
  --       end,
  --     },
  --   },
  -- },

  -- Extend LSP configuration
  lsp = {
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = false, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        "denols",
        -- "sumneko_lua",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- easily add or disable built in mappings added during LSP attaching
    mappings = {
      n = {
        -- ["<leader>lf"] = false -- disable formatting keymap
      },
    },
    -- add to the global LSP on_attach function
    -- on_attach = function(client, bufnr)
    -- end,

    -- override the mason server-registration function
    -- server_registration = function(server, opts)
    --   require("lspconfig")[server].setup(opts)
    -- end,

    -- Add overrides for LSP server settings, the keys are the name of the server
    ["server-settings"] = {
      clangd = {
        capabilities = { offsetEncoding = "utf-8" },
      },
      -- example for addings schemas to yamlls
      -- yamlls = { -- override table for require("lspconfig").yamlls.setup({...})
      --   settings = {
      --     yaml = {
      --       schemas = {
      --         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
      --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
      --         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
      --       },
      --     },
      --   },
      -- },
    },
  },
}

return config
