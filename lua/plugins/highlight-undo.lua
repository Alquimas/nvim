return {
	'tzachar/highlight-undo.nvim',
	lazy = false,
	config = function()

		local highlight_undo = require("highlight-undo")

		local opts = {
	    	hlgroup = 'HighlightUndo',
	    	duration = 2000,
	    	keymaps = {
	      		{'n', 'u', 'undo', {}},
	      		{'n', '<C-r>', 'redo', {}},
	    	}
		}

		highlight_undo.setup(opts)
	end,
}
