-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Mini
local mpk = require("mini.pick")
local mex = require("mini.extra")
vim.keymap.set("n", "<leader>ff", function()
  mpk.builtin.files()
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", function()
  mpk.builtin.files({ tool = "git" })
end, { desc = "Find git files" })

vim.keymap.set("n", "<leader>fb", function()
  mpk.builtin.buffers()
end, { desc = "Find buffers" })

vim.keymap.set("n", "<leader>fr", function()
  mpk.builtin.grep_live()
end, { desc = "Find GREP" })

vim.keymap.set("n", "<leader>ft", function()
  mex.pickers.treesitter({
    source = "current", -- Show symbols from current buffer
    mode = "symbols", -- Focus on document symbols
  })
end, { desc = "Show document AST" })

vim.keymap.set("n", "<leader>fo", function()
  mex.pickers.lsp({
    source = "current", -- Show symbols from current buffer
    scope = "document_symbol", -- Scope document symbols
  })
end, { desc = "Show document outline" })

-- VIM
-- Pick colortheme
vim.keymap.set("n", "fc", function()
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

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
  desc = "LSP actions",
  callback = function(event)
    local opts = { buffer = event.buf }

    -- these will be buffer-local keybindings
    -- because they only work if you have an active language server

    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
    vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
    vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
    vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
    vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
    vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
    vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
    vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
    vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
    vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
  end,
})
