-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Move left
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move left in Insert mode" })
-- Move down
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move down in Insert mode" })
-- Move up
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move up in Insert mode" })
-- Move right
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move right in Insert mode" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<cr>", { desc = "Close current split" })

-- Optional but highly recommended: Use Ctrl-a and Ctrl-e for start/end of line navigation
-- Move to the beginning of the current line
vim.keymap.set("i", "<C-a>", "<Home>", { desc = "Move to start of line in Insert mode" })
-- Move to the end of the current line
vim.keymap.set("i", "<C-e>", "<End>", { desc = "Move to end of line in Insert mode" })

-- Use Ctrl-BS (backspace) to delete the previous word (useful in insert mode)
vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Delete previous word in Insert mode" })
vim.keymap.set("n", "<leader>ls", ":LiveServerStart<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>lq", ":LiveServerStop<CR>", { noremap = true, silent = true })
