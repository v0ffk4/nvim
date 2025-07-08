return {
  { "echasnovski/mini.pick", version = "*", opts = {} },
  { "echasnovski/mini.extra", version = "*", opts = {} },
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
