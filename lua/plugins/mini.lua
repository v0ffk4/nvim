return {
  { 'echasnovski/mini.pick', version = '*' },
  { 'echasnovski/mini.pairs', version = '*' },
  { 'echasnovski/mini.comment', version = '*', lazy = false },
  { 'echasnovski/mini.surround', version = '*', opts = {
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        highlight = "gsh",
        update = "gsu",
      },
    },
  },
  config = function()
    require("mini.pairs").setup()
    require("mini.comment").setup()
    require("mini.pick").setup()
  end,
}
