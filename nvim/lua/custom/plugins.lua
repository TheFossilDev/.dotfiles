require "custom.autopairs"
return function(use)
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use 'preservim/nerdtree'
	use 'ryanoasis/vim-devicons'
	use 'ThePrimeagen/vim-be-good'
end
