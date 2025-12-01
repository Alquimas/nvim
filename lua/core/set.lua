-- muda o caracter do <leader> para espaço
vim.g.mapleader = " "

vim.o.list = true
vim.o.title = true

-- ao dividir, divide pra direita e para baixo, e não o oposto
vim.o.splitright = true
vim.o.splitbelow = true

-- se a linha chegar no fim da tela, quebra e mostra ++ na próxima pra
-- que continua na atual
vim.o.wrap = true
vim.o.showbreak = '++'

-- ativa os numeros e a numeraçao relativa
vim.o.nu = true
vim.o.relativenumber = true

-- 4 espacos tab, a revolucao
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- sem backup amigo
vim.o.swapfile = false
vim.o.backup = false

-- indentação inteligente
vim.o.smartindent = true
vim.o.copyindent = true

-- cria um arquivo de undo, para deixar a undo tree mais op
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

-- destaca a linha onde tá o cursor
vim.o.cursorline = true
vim.o.termguicolors = true

-- deixa o lualine mostrar o modo
vim.o.showmode = false

-- guia de identação
vim.o.listchars = "tab:⟩ ,precedes:<,extends:>,trail:␣,nbsp:⍽,leadmultispace:▏   ,space:·"

-- sempre mostra as 10 primeiras/ultimas linhas, exceto se for começo/fim do
-- documento
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10

-- eu preciso ver onde o texto quebra, nao me julgue
vim.o.colorcolumn = "81"

-- muda um pouco o funcionamente da cmdline
vim.o.cmdwinheight = 10
vim.o.cmdheight = 1

-- um folding basico eh melhor que folding nenhum
vim.o.foldmethod = "indent"
vim.o.fillchars = "fold: "
vim.o.foldenable = true
vim.o.foldlevel = 99
vim.o.foldminlines = 1
vim.o.foldtext = 'v:lua.Utils.custom_fold_text()'

-- caracteres especiais ativados no regexp
vim.o.magic = true

-- sempre mostra a signcolumn, mesmo sem conteudo
vim.o.signcolumn = 'yes'

-- adicionar uma borda em torno das janelas
vim.o.winborder = 'bold'
