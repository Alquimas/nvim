-- This file can be loaded by calling `lua require('plugins')` 
-- from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    --telescope - buscador de arquivos
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --one dark - tema
    use({ 'folke/tokyonight.nvim',
        as = 'tokyonight.nvim',
        config = function()
            vim.cmd('colorscheme tokyonight-night')
        end
    })

    -- destacar cores
    use(  'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- undotree - simplifica buscar por versoes antigas de um arquivo
    use(  'mbbill/undotree')

    -- Git status
    use(  'tpope/vim-fugitive')

    -- nvimTree - maneger de arquivos
    use(  'nvim-tree/nvim-tree.lua')
    use(  'nvim-tree/nvim-web-devicons')

    --bufferline 
    use(  'akinsho/bufferline.nvim', {tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'})

    -- destaque na indentação
    use(  'lukas-reineke/indent-blankline.nvim')

    --barra bonitinha
    use(  'nvim-lualine/lualine.nvim', {requires = 'nvim-tree/nvim-web-devicons',
        opt = true })

    -- destaca undo/redo
    use(  'tzachar/highlight-undo.nvim')

    -- LSP setup 
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
        -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocomplete 
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'}, -- Required
            {
                "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
                config = function()
                    require("lsp_lines").setup()
                end,
            } -- Optional
        }
    }
end)
