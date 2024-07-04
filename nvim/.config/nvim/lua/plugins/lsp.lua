return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason.nvim",
    { "williamboman/mason-lspconfig.nvim", config = true }
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.lua_ls.setup {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          },
          format = {
            enable = true,
            defaultConfig = {
              quote_style = "double"
            }
          }
        }
      }
    }
    lspconfig.gopls.setup {
      capabilities = capabilities
    }
  end
}
