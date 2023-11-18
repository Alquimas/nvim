local mappings = {
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
}

return {
	"nvim-telescope/telescope.nvim",
	tag = '0.1.2',
	enabled = config.telescope,
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		local telescope = require("telescope")
		local action = require("telescope.actions")
		telescope.setup({
			defaults = {
        		theme = "center",
        		layout_strategy = 'horizontal',
        		sorting_strategy = "ascending",
        		layout_config = {
            		horizontal = {
            		    prompt_position = "top",
            		    preview_width = 0.0,
            		},
        		},
    		},
		})
	end,

	keys = mappings,
}
