return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp"
  },
  opts = function()
    local cmp = require("cmp")

    return {
      snippet = {
        expand = function(args)
          return vim.snippet.expand(args.body)
        end
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
      })
    }
  end
}
