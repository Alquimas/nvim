return {
    "williamboman/mason.nvim",
    enabled = config.mason,
    lazy = false,
    opts = {
        ui = {
            border = "rounded",
            icons = {
                package_installed = "",
                package_pending = "",
                package_uninstalled = "",
            },
        },
    },
    keys = {
        { "<leader>im", "<cmd>Mason<cr>", desc = "Mason" },
    },
}
