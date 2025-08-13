return {
  { "ellisonleao/gruvbox.nvim", lazy = true },
  {
    "folke/tokyonight.nvim",
    lazy = true,
  },
  { "rebelot/kanagawa.nvim", lazy = false },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha", -- Choose: latte, frappe, macchiato, mocha (default: auto)
      transparent_background = false, -- Enable/disable transparency
    },
  },
  { "rose-pine/neovim", lazy = false },
  { "sainnhe/everforest", lazy = false },
  { "romainl/Apprentice", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = false },
  { "Shatur/neovim-ayu", lazy = false },
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
    opts = {},
    -- init = function()
    --   vim.cmd.colorscheme("kanagawa-paper-ink")
    -- end,
    -- opts = { ... },
  },
  {
    "vague2k/vague.nvim",
    lazy = false,
    opts = {},
  },
}
