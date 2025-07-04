return {
  { "ellisonleao/gruvbox.nvim", lazy = true },
  {
    "folke/tokyonight.nvim",
    lazy = true,
  },
  { "rebelot/kanagawa.nvim", lazy = true },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      flavour = "mocha", -- Choose: latte, frappe, macchiato, mocha (default: auto)
      transparent_background = false, -- Enable/disable transparency
      integrations = {
        cmp = true,
        gitsigns = true,
        telescope = true,
        treesitter = true,
      },
    },
  },
  { "rose-pine/neovim", lazy = true },
  { "sainnhe/everforest", lazy = true },
  { "romainl/Apprentice", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "Shatur/neovim-ayu", lazy = true },
}
