require("lsp_lines").setup()

-- desativa o texto virtual que o lsp usa por padrão
vim.diagnostic.config({
    virtual_text = false,
})
-- espaço l em qualquer modo desativa as linhas do lsp
vim.keymap.set(
    "",
    "<leader>l",
    require("lsp_lines").toggle,
    { desc = "Toggle lsp_lines" }
)
