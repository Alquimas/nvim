local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

-- Precisam ser instalados por fora ou usando o :Mason
-- O de rust aparentemente só funciona em projetos buildados com o cargo
-- Nao falamos sobre o de Haskell
--
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.hls.setup{}

lsp.setup()

local cmp = require('cmp')

cmp.setup({
    mapping = {
        --faz o enter selecionar a opção do autocomplete
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        --se o autocomplete tá desativado, força a lista de complete
        --caso contrario, deixa desativado
        --['<C-a>'] = cmp.mapping.complete(),
    },
    --faz o primeiro item começar selecionado 
    preselect = 'item',
    completion = {
        completeopt = 'menu, menuone, noinsert',
        --autocomplete
        --se tiver ativado, deixa comentado
        --caso contrário o lsp quebra 
        --autocomplete = false,
   },
})


