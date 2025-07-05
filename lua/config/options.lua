--  Options are automatically loaded before lazy.nvim startup
--  Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--  Add any additional options here
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd.colorscheme("catppuccin")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- local cmp = require("cmp")
-- require("luasnip.loaders.from_vscode").lazy_load()
--
-- cmp.setup({
--   sources = {
--     { name = "nvim_lsp" },
--     { name = "luasnip" },
--   },
--   snippet = {
--     expand = function(args)
--       require("luasnip").lsp_expand(args.body)
--     end,
--   },
--   mapping = cmp.mapping.preset.insert({
--     -- Jump to the next snippet placeholder
--     ["<C-f>"] = cmp.mapping(function(fallback)
--       local luasnip = require("luasnip")
--       if luasnip.locally_jumpable(1) then
--         luasnip.jump(1)
--       else
--         fallback()
--       end
--     end, { "i", "s" }),
--     -- Jump to the previous snippet placeholder
--     ["<C-b>"] = cmp.mapping(function(fallback)
--       local luasnip = require("luasnip")
--       if luasnip.locally_jumpable(-1) then
--         luasnip.jump(-1)
--       else
--         fallback()
--       end
--     end, { "i", "s" }),
--   }),
-- })
