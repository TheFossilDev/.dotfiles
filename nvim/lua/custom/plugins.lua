require "custom.autopairs"
return function(use)
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	require'nvim-treesitter.configs'.setup {
		autotag = {
			enable = true,
		}
	}
	use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
	use "rafamadriz/friendly-snippets"
	use 'preservim/nerdtree'
	use 'ryanoasis/vim-devicons'
	use 'ThePrimeagen/vim-be-good'
	use 'segeljakt/vim-silicon'
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
end
