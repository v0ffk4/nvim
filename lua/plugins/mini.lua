return {
  {
    "echasnovski/mini.pick",
    version = "*",
    config = function()
      local mpk = require("mini.pick")

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
    end,
  },
  {
    "echasnovski/mini.extra",
    version = "*",
    config = function()
      local mex = require("mini.extra")

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
    end,
  },
  {
    "echasnovski/mini.pairs",
    version = "*",
    opts = {
      modes = {
        insert = true,
        command = false,
        terminal = false,
      },
    },
  },
  { "echasnovski/mini.comment", version = "*", opts = {} },
  {
    "echasnovski/mini.surround",
    version = "*",
    opts = {
      mappings = {
        add = "gmsa",
        delete = "gmsd",
        find = "gmsf",
        highlight = "gmsh",
        update = "gmsu",
        replace = "gmsr",
      },
    },
  },
  { "echasnovski/mini.move", version = "*", opts = {} },
}
