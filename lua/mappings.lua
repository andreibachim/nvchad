require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP code actions"})

map("n", "gd", function()
  vim.lsp.buf.definition()
end, { desc = "Go to definition"})

map("n", "gr", function()
  vim.lsp.buf.references()
end, { desc = "View references"})

map("n", "K", function()
  vim.lsp.buf.hover()
end, { desc = "View docs"})

map("n", "<leader>ra", function()
  vim.lsp.buf.rename()
end, { desc = "LSP rename"})



map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
