local lsp = require "lspconfig"
-- local coq = require "coq"


-- local on_attach = function(client, bufnr)
--   vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
-- end
-- 
-- local coq_lsp_config = coq.lsp_ensure_capabilities{
--   on_attach = on_attach
-- }

-- lsp.tsserver.setup(coq_lsp_config)
-- lsp.pyright.setup(coq_lsp_config)

lsp.tsserver.setup{}
lsp.pyright.setup{}
