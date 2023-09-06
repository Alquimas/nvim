require("user")
--Permite que o NeoVim procure e use os pacotes relacionados a Haskell 
--instalados pelo GHCup
vim.env.PATH = vim.env.PATH .. ':/home/.ghcup/bin/'

vim.env.PATH = vim.env.PATH .. ':/home/alquimas/.opam/firstProject/share/ocp-indent/vim'
