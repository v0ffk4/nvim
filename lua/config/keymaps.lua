-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`

local map = vim.keymap.set
local mpk = require("mini.pick")

-- Buffer switch
map("n", "<Tab>", "<cmd>bnext<CR>")
map("n", "<S-Tab>", "<cmd>bprev<CR>")
map("n", "<C-Del>", "<cmd>bd<CR>")
-- map("n", "CS-Del", "<cmd>%bd<CR>")

map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Pick colortheme
map("n", "fc", function()
  local colors = vim.fn.getcompletion("", "color")

  mpk.start({
    source = {
      items = colors,
      name = "Colorschemes",
      choose = function(item)
        vim.cmd.colorscheme(item)
      end,
      preview = function(item)
        -- Preview without persisting
        vim.cmd("silent! colorscheme " .. item)
      end,
    },
    window = {
      config = {
        width = 60,
        height = 15,
        border = "double",
      },
    },
  })
end, { desc = "Colorscheme browser" })

-- Add require colorscheme to which-key
require("which-key").add({
  { "<leader>f", group = "Browse" }, -- group
  { "<leader>fc", desc = "Colorschemes", mode = "n" },
})
