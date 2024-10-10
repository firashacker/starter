require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<C-h>", "<cmd> TmuxNavigateLeft <cr>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight <cr>")
map("n", "<C-j>", "<cmd> TmuxNavigateDown <cr>")
map("n", "<C-k>", "<cmd> TmuxNavigateUp <cr>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
