return {
  { 'echasnovski/mini.pick', version = '*', opts = {} },
  { 'echasnovski/mini.pairs', version = '*', opts = {
      modes = {
          insert = true,
          command = false,
          terminal = false
        }
      }
  },
  { 'echasnovski/mini.comment', version = '*', opts = {} },
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
  { 'echasnovski/mini.move', version = '*', opts = {} },
}

