return {
    {	
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
	    vim.cmd("colorscheme tokyonight-storm")
	end,
	transparent = true,
	styles = {
	    sidebars = "transparent",
	    floats = "transparent",
	},
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
