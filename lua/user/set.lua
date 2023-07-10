--muda o caracter do <leader> para espaço
vim.g.mapleader = " "

--desativa a tree nativa do Vim, que pode ser chamada usando :Ex
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--ativa o acesso do nvim ao clipboard do sistema
vim.opt.clipboard = "unnamedplus"

--nvimtree
require("nvim-tree").setup()

--ao dividir, divide pra direita e para baixo, e não o oposto
vim.opt.splitright = true
vim.opt.splitbelow = true

--se a linha chegar no fim da tela, quebra e mostra ++ na próxima pra
--que continua na atual
vim.opt.wrap = true
vim.opt.showbreak = '++'

--ativa os numeros e a numeraçao relativa
vim.opt.nu = true
vim.opt.relativenumber = true

--4 espacos tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

--sem backup amigo
vim.opt.swapfile = false
vim.opt.backup = false

--indentação inteligente
vim.opt.smartindent = true

--cria um arquivo de undo, para deixar a undo tree mais op
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- destaca a linha onde tá o cursor 
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- deixa o lualine mostrar o modo
vim.opt.showmode = false

--sempre mostra as 15 primeiras/ultimas linhas, exceto se for começo/fim do
--documento
vim.opt.scrolloff = 15
vim.opt.sidescrolloff = 15

--máximo de 80 caracteres por linha, se ultrapassar automaticamente dá enter no
--ultimo espaço
vim.opt.textwidth = 80
--eu preciso ver onde o texto quebra, nao me julgue
vim.opt.colorcolumn = "81"
