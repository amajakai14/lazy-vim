-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- in lua/config/init.lua (or autocmds.lua)
vim.api.nvim_create_user_command("CP", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Copied: " .. vim.fn.expand("%:p"))
end, { desc = "Copy current file path to clipboard" })

-- Relative path (relative to cwd)
vim.api.nvim_create_user_command("CRP", function()
  local relpath = vim.fn.expand("%:.")
  vim.fn.setreg("+", relpath)
  print("Copied relative path: " .. relpath)
end, { desc = "Copy relative file path to clipboard" })
