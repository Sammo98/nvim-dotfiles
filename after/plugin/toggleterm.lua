require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Example keybindings
vim.keymap.set('n', '<Tab>t', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<Tab>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
