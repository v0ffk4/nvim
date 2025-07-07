--  Options are automatically loaded before lazy.nvim startup
--  Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--  Add any additional options here
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd.colorscheme("catppuccin-mocha")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Add colorscheme picker to which-key
require("which-key").add({
  { "<leader>b", group = "Browse" }, -- group
  { "<leader>bc", desc = "Colorschemes", mode = "n" },
})
