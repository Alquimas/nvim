vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        truncate_names = true,
        numbers = "ordinal",
        separator_style = "slope",
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
            }
        },
    }
}

--mover entre os buffers
vim.keymap.set("n", "<tab>", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<leader><tab>", vim.cmd.BufferLineCyclePrev)
