--  Options are automatically loaded before lazy.nvim startup
--  Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--  Add any additional options here
vim.o.fileencoding = "utf-8"
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd.colorscheme("catppuccin-mocha")
vim.cmd.set("cursorline")

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = false
