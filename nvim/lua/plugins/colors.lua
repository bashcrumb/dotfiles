return {
    {
	"navarasu/onedark.nvim",
	priority = 1000,
	config = function()
	    require('onedark').setup {
		style = 'warmer'
	    }
	    require('onedark').load()
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = 'tokyonight',
	}
    }
}
