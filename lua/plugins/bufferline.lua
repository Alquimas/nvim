return {
    "akinsho/bufferline.nvim",
    enabled = config.bufferline,
    lazy = false,
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            truncate_names = true,
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "Arquivos",
                    text_align = "center",
                    separator = true,
                    padding = 1,
                },
                {
                    filetype = "NvimTree",
                    text = "Arquivos",
                    text_align = "center",
                    separator = true,
                    padding = 1,
                },
                {
                    filetype = "undotree",
                    text = "UndoTree",
                    text_align = "center",
                    separator = true,
                    padding = 1,
                },
                {
                    filetype = "diff",
                    text = "Diff",
                    text_align = "center",
                    separator = true,
                    padding = 1,
                },
            },
        },
    },
    keys = {
        { "<TAB>",         "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        { "<leader><TAB>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
        { "<leader>bd",    "<cmd>bd<cr>",                  desc = "Buffer Delete" },
    },
}
