local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
  end

  -- pass to setup along with your other options
  require("nvim-tree").setup {
    ---
    on_attach = my_on_attach,
    ---
    renderer = {
        --identação dos arquivos
        indent_markers = {
            enable = true,
            icons = {
                corner = "└ ",
                edge = "│ ",
                item = "│ ",
                none = "  ",
            },
        },
        --iconezinho kekw
        icons = {
            webdev_colors = true,
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true
            },
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "", -- 
                    staged = "",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "",
                    deleted = "",
                    ignored = "◌",
                },
            },
        } 
    },
    --Quero arquivos ocultos ocultados por padrão, H mostra eles
    filters = {
        dotfiles = true,
        git_clean = false,
        no_buffer = false,
        custom = {},
        exclude = {},
    },
    --Foca no arquivo aberto atualmente
    update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {},
    },
}
    --Ativa ou Desativa a tree
    vim.keymap.set('n', '<leader>x', vim.cmd.NvimTreeToggle)
    --Me joga pro arquivo que tá sendo editado
    vim.keymap.set('n', '<leader>s', vim.cmd.NvimTreeFindFile)
