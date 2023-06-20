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

