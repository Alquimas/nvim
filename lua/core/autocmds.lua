local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Destaca conteudo copiado
local highlight_group = augroup("YankHighlight",
    { clear = true })
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
    end,
    group = highlight_group,
    pattern = "*",
})

-- Ao salvar um arquivo, deleta qualquer espaço sobrando
local remove_trailing_space = augroup("TrailingSpace", {})
autocmd({"BufWritePre"}, {
    group = remove_trailing_space,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- volta o cursor para a posicao que estava antes de :q
local restorecursor = augroup("RestoreCursor", {})
autocmd("BufReadPost", {
    group = restorecursor,
    desc = "Restore last cursor position in file",
    callback = function()
        if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.fn.setpos(".", vim.fn.getpos("'\""))
        end
    end,
})

-- ao entrar no modo de insercao, desabilita o relativenumber
local togglegroup = augroup("NumberToggle", {clear = true})
autocmd({"BufEnter", "FocusGained", "InsertLeave" }, {
    group = togglegroup,
    pattern = "*",
    callback = function ()
        vim.wo.relativenumber = true
    end,
})

autocmd({"BufLeave", "FocusLost", "InsertEnter" }, {
    group = togglegroup,
    pattern = "*",
    callback = function ()
        vim.wo.relativenumber = false
    end,
})
