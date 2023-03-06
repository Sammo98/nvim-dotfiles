local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"rust_analyzer",
})
lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
