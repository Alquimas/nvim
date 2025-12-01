return {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    opts = {
        ensure_installed = {
            "lua_ls",
            "rust_analyzer",
            "clangd"
        },
    }
}
