-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
-- vim.keymap.set("n", "<C-p>", builtin.git_files, {})
-- vim.keymap.set("n", "<leader>ps", function()
--   builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>wh", ":split<Return><C-w>w")
vim.keymap.set("n", "<leader>wv", ":vsplit<Return><C-w>w")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
