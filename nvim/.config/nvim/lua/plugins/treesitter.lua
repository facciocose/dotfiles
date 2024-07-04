return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    highlight = {
      enable = true
    },
    indent = {
      enable = true
    }
  },
}
