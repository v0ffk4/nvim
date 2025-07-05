return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "pyright",
      "lua_ls",
      "svelte",
      "ts_ls",
      "eslint_d",
      "jsonls",
      "html",
      "css-lsp",
      "css_variables"
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {
      ensure_installed = {
        "python-lsp-server",
        "lua-language-server",
        "svelte-language-server",
        "typescript-language-server",
        "eslint_d",
        "json-lsp",
        "html-lsp",
        "css-lsp",
        "css-variables-language-server"
      },
    }
  },
  "neovim/nvim-lspconfig",
},
}

