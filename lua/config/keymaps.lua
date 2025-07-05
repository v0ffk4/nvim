-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Mini Pick
vim.keymap.set("n", "<leader>ff", function()
  require("mini.pick").builtin.files()
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", function()
  require("mini.pick").builtin.files({ tool = 'git' })
end, { desc = "Find git files" })

vim.keymap.set("n", "<leader>fb", function()
  require("mini.pick").builtin.buffers()
end, { desc = "Find buffers" })

vim.keymap.set("n", "<leader>fr", function()
    require("mini.pick").builtin.grep_live()
end, { desc = "Find GREP" })
