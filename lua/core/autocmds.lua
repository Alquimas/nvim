local autocmd = vim.api.nvim_create_autocmd

-- Destaca conteudo copiado
local highlight_group = vim.api.nvim_create_augroup("YankHighlight",
    { clear = true })
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
    end,
    group = highlight_group,
    pattern = "*",
})

-- Ao salvar um arquivo, deleta qualquer espaço sobrando
local remove_trailing_space = vim.api.nvim_create_augroup("TrailingSpace", {})
autocmd({"BufWritePre"}, {
    group = remove_trailing_space,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
