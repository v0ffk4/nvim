return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
    ensure_installed = {
      "lua-language-server",
      "svelte-language-server",
      "typescript-language-server",
      "eslint-lsp",
      "json-lsp",
      "html-lsp",
      "css-lsp",
      "css-variables-language-server"
    },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
