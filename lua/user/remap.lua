vim.g.mapleader = " "

--Move um texto selecionado no modo visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") --up

--reescrevendo alguns comandos para uma melhor experiência
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>d", "\"_d")

-- Compilando
vim.keymap.set("n", "<leader>cc", ":w | make compile SOURCE_FILE=%<CR>")
vim.keymap.set("n", "<leader>cl", ":w | make clean SOURCE_FILE=%<CR>")

--terminal
vim.keymap.set("n", "<leader>nn", ":split term://bash<CR>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

--simplificando pra mover entre janelas
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

--substituir a palavra que o buffer tá em cima
vim.keymap.set("n", "<leader>s",
[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]])

--Ativa/Desativa os números relativos
function Toggle_relative_number()
    if vim.wo.relativenumber == true then
       vim.wo.relativenumber = false
    else
       vim.wo.relativenumber = true
    end
end
vim.cmd([[command! ToggleRelNum lua Toggle_relative_number()]])

vim.keymap.set("n", "<leader>rn", ":ToggleRelNum<CR>")
