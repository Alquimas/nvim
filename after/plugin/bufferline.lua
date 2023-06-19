vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        numbers = "ordinal",
        separator_style = "slope",
        offsets = {
            {
                filetype = "neo-tree",
                text = "Arquivos",
                text_align = "center",
                separator = true, -- set to `true` if clear background of neo-tree
            },
            {
                filetype = "NvimTree",
                text = "Arquivos",
                text_align = "center",
                separator = true,
            },
        },
    }
}

--mover entre os buffers
vim.keymap.set("n", "<tab>", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<leader><tab>", vim.cmd.BufferLineCyclePrev)
