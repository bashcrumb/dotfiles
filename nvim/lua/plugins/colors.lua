return {
    {	
	"EdenEast/nightfox.nvim",
	priority = 1000,
	config = function()
	    require("nightfox").setup({
		options = {
		    transparent = true,
		    terminal_colors = true,
		},
		styles = {
		    sidebars = "transparent",
		    floats = "transparent",
		},
	    })
	    vim.cmd("colorscheme nightfox")
	end,
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
