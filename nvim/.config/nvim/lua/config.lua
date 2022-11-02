local lsp = require "lspconfig"
local opts = { noremap=true, silent=true }

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)

local on_attach = function(client, bufnr)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
end

lsp.tsserver.setup{
  on_attach = on_attach
}
lsp.pyright.setup{
  on_attach = on_attach
}

