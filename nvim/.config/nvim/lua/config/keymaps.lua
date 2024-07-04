vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>:", "<cmd>Telescope command_history<CR>")

vim.keymap.set({ "n", "x", "o" }, "s", function() require("flash").jump() end)

vim.keymap.set("n", "<leader>cf", function()
  vim.lsp.buf.format { async = true }
end)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
