local autocmd = vim.api.nvim_create_autocmd

-- Destaca conteudo copiado
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank{timeout=500}
    end,
    group = highlight_group,
    pattern = "*",
})
