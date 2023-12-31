local mappings = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>bb", "<cmd>Telescope buffers<cr>",    desc = "See Buffers" },
    { "<leader>oo", "<cmd>Telescope oldfiles<cr>",  desc = "Old Files" },
    { "<leader>cc", "<cmd>Telescope current_buffer_fuzzy_find<cr>",  desc = "Find in file" },
}

return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.2',
    enabled = config.telescope,
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },

    config = function()
        local telescope = require("telescope")
        local action = require("telescope.actions")

        local opts = {
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
            },
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
        telescope.setup(opts)

        local ext = {
            "fzf",
        }

        -- load extensions
        for _, extension in ipairs(ext) do
            telescope.load_extension(extension)
        end
    end,

    keys = mappings,
}
