local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map('n', '<D-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<D-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<D-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<D-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<D-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<D-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<D-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<D-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<D-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<D-tc>', '<Cmd>BufferClose<CR>', opts)

-- General Tab Commands
vim.keymap.set("n", "<D-tn", '<CMD> tabnew <CR>')

