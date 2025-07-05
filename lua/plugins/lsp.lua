return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "pyright",
      "lua_ls",
      "svelte",
      "ts_ls",
      "vscode-eslint-language-server",
      "jsonls",
      "html",
      "cssls",
      "css_variables",
    },
  },
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        ensure_installed = {
          "python-lsp-server",
          "lua-language-server",
          "svelte-language-server",
          "typescript-language-server",
          "eslint-lsp",
          "json-lsp",
          "html-lsp",
          "css-lsp",
          "css-variables-language-server",
        },
      },
    },
    {
      "neovim/nvim-lspconfig",
      lazy = "false",
      config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local lspconfig = require("lspconfig")
        lspconfig.svelte.setup({
          capabilities = capabilities,
        })
        lspconfig.html.setup({
          capabilities = capabilities,
        })
        lspconfig.ts_ls.setup({
          capabilities = capabilities,
        })
        lspconfig.lua_ls.setup({
          capabilities = capabilities,
        })
      end,
    },
  },
}
