return {
  filetypes = { "svelte" },
  workspace_required = true,
  capabilities = {
    require("blink.cmp").get_lsp_capabilities(),
    workspace = {
      didChangeWatchedFiles = vim.fn.has("nvim-0.10") == 0 and { dynamicRegistration = true },
    },
  },
}
