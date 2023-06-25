local telescope = require 'telescope'
local telescope_builtin = require 'telescope.builtin'
local telescope_actions = require 'telescope.actions'
local M = {}
--muda o posicionamento e desabilida o preview 
require('telescope').setup {
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
}
M.find_files = function()
    telescope_builtin.find_files {
    }
end
--pesquisa padrão
vim.keymap.set('n', '<leader>ff', M.find_files, {})
