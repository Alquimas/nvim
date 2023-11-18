--muda o caracter do <leader> para espaço
vim.g.mapleader = " "

--desativa a tree nativa do Vim, que pode ser chamada usando :Ex
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opts = {
	--ativa o acesso do nvim ao clipboard do sistema
	clipboard = "unnamedplus",

	--ao dividir, divide pra direita e para baixo, e não o oposto
	splitright = true,
	splitbelow = true,

	--se a linha chegar no fim da tela, quebra e mostra ++ na próxima pra
	--que continua na atual
	wrap = true,
	showbreak = '++',

	--ativa os numeros e a numeraçao relativa
	nu = true,
	relativenumber = true,

	--2 espacos tab, a revolucao
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,

	--sem backup amigo
	swapfile = false,
	backup = false,

	--indentação inteligente
	smartindent = true,

	--cria um arquivo de undo, para deixar a undo tree mais op
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	undofile = true,

	hlsearch = false,
	incsearch = true,

	-- destaca a linha onde tá o cursor 
	cursorline = true,
	termguicolors = true,

	-- deixa o lualine mostrar o modo
	showmode = false,

	-- guia de identação
	list = true,
	listchars = { tab = "⟩ ", precedes = "<", extends = ">", leadmultispace = "▏ ", trail = "␣", nbsp = "⍽" },

	--sempre mostra as 15 primeiras/ultimas linhas, exceto se for começo/fim do
	--documento
	scrolloff = 15,
	sidescrolloff = 15,

	--máximo de 80 caracteres por linha, se ultrapassar automaticamente dá enter no
	--ultimo espaço
	textwidth = 80,
	--eu preciso ver onde o texto quebra, nao me julgue
	colorcolumn = "81",

	-- muda um pouco o funcionamente da cmdline
	cmdwinheight = 1,
	cmdheight = 1,
}

for k, v in pairs(opts) do
	vim.opt[k] = v
end
