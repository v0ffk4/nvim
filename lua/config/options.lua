--  Options are automatically loaded before lazy.nvim startup
--  Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--  Add any additional options here
vim.o.fileencoding = "utf-8"
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true
vim.o.scrolloff = 10

vim.cmd.colorscheme("catppuccin-mocha")

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = false

-- Highlight yanked
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
