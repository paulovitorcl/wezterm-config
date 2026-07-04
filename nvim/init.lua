-- ~/.config/nvim/init.lua
-- Config minimalista, portátil, zero plugin manager

local opt = vim.opt

-- Interface básica
opt.number = true          -- número da linha atual
opt.cursorline = true      -- destaca a linha do cursor
opt.termguicolors = true   -- cores corretas no terminal
opt.signcolumn = "yes"     -- coluna fixa pra sinais (evita "pulo" de texto)
opt.scrolloff = 8          -- mantém contexto ao rolar

-- Indentação sensata
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Busca
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Clipboard do sistema (copiar/colar fora do nvim funciona direto)
opt.clipboard = "unnamedplus"

-- Split mais intuitivo
opt.splitright = true
opt.splitbelow = true

-- Desliga swapfile/backup (evita arquivos .swp espalhados)
opt.swapfile = false
opt.backup = false
opt.undofile = true -- mas mantém histórico de undo persistente

-- Aparência simples (usa o scheme padrão do terminal - combina com fundo preto)
vim.cmd("colorscheme habamax") -- built-in, escuro e discreto

-- Atalhos básicos
vim.g.mapleader = " " -- barra de espaço como tecla líder

local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>", { desc = "Salvar" })
map("n", "<leader>q", ":q<CR>", { desc = "Fechar" })
map("n", "<leader>e", ":Ex<CR>", { desc = "Explorador de arquivos (nativo)" })

-- Navegação entre splits com Ctrl+hjkl
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Limpa destaque de busca com Esc
map("n", "<Esc>", ":nohlsearch<CR>", { silent = true })

-- Move linha selecionada pra cima/baixo no modo visual
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Abre lazygit em um terminal vertical (fecha com q dentro do lazygit)
map("n", "<leader>g", ":vert term lazygit<CR>", { desc = "lazygit" })
