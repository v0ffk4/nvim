return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "svelte", "javascript", "html" },
    highlight = {
      additional_vim_regex_highlighting = { "svelte" },
    },
  },
}

