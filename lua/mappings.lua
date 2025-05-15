require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map({"n", "<leader>pd", ""})

map("n", "<leader>cd", function() require("omnisharp_extended").lsp_definition() end)
map("n", "<leader>cD", function() require("omnisharp_extended").lsp_type_definition() end)
map("n", "<leader>cr", function() require("omnisharp_extended").lsp_references() end)
map("n", "<leader>ci", function() require("omnisharp_extended").lsp_implementation() end)
