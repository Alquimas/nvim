vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = utils.map

local normal = {
    ["<c-h>"] = { "<c-w>h", "Ir para split direito" },
    ["<c-j>"] = { "<c-w>j", "Ir para split inferior" },
    ["<c-k>"] = { "<c-w>k", "Ir para split superior" },
    ["<c-l>"] = { "<c-w>l", "Ir para split esquerdo" },
    ["<leader>d"] = { "\"_d", "Deletar texto" },

    --destaque centralizado
    ["<C-d>"] = "<C-d>zz",
    ["<C-u>"] = "<C-u>zz",
    ["n"] = "nzzzv",
    ["N"] = "Nzzzv",

    ["<leader>cd"] = { utils.set_curdir, "Muda o diretório" },

    ["<c-a-j>"] = { "<cmd>resize -1<cr>", "Aumenta para baixo" },
    ["<c-a-k>"] = { "<cmd>resize +1<cr>", "Aumenta para cima" },
    ["<c-a-l>"] = { "<cmd>vertical resize -1<cr>", "Aumenta para direita" },
    ["<c-a-h>"] = { "<cmd>vertical resize +1<cr>", "Aumenta para esquerda" },
    ["<leader>s"] = {
        [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]],
        "Substituir palavra"
    },
    ["<leader>a"] = { "mpgg0vG$y`p", "Copia todo o texto" },
    ["<a-j>"] = { "<cmd>m .+1<cr>==", "Move a linha para baixo" },
    ["<a-k>"] = { "<cmd>m .-2<cr>==", "Move a linha para cima" },

    -- buffers
    ["<leader><BS>"] = { "<cmd>bd<cr>", "Deleta buffer" },
    ["<TAB>"] = { "<cmd>bn<cr>", "Próximo buffer" },
    ["<S-TAB>"] = { "<cmd>b#<cr>", "Buffer anterior" },

    -- as chances de eu querer recortar sao mininmas
    ["x"] = '"_x',

    -- splits (sim, esses são os comandos padrao, so quero memorizar)
    ["<C-w>v"] = { "<cmd>vsplit<cr>", "Split vertical" },
    ["<C-w>s"] = { "<cmd>split<cr>", "Split horizontal" },
    ["<C-w>w"] = { "<C-w>w", "Next split" },
    ["<C-w>p"] = { "<C-w>p", "Previous split" },
}

local insert = {
    ["jk"] = "<esc>",
    ["kj"] = "<esc>",
    ["<c-s>"] = "<esc>:w<cr>i",
    ["<a-j>"] = "<esc>:m .+1<cr>==gi",
    ["<a-k>"] = "<esc>:m .-2<cr>==gi",
}

local visual = {
    ["<c-s>"] = "<esc>:w<cr>",
    ["<c-c>"] = "<esc>",

    ["<a-j>"] = ":m '>+1<cr>gv-gv",
    ["<a-k>"] = ":m '<lt>-2<CR>gv-gv",

    ["<"] = "<gv",
    [">"] = ">gv",


    ["x"] = '"_x',
    ["p"] = '"_dP',
    ["P"] = '"_dP',
}

map("n", normal)
map("i", insert)
map("x", visual)

local movement = {
    ["j"] = "v:count ? 'j' : 'gj'",
    ["k"] = "v:count ? 'k' : 'gk'",
}

map("n", movement, { expr = true })
map("x", movement, { expr = true })
