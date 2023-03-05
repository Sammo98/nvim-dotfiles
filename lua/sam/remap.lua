vim.g.mapleader = " "
local map = vim.keymap.set
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("x", "<leader>p", "\"_dP")

-- Split window vertically
map("n", "<leader>wi", "<C-w>")

