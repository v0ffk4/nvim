return {
  filetypes = { "svelte" },
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true,
      },
      require("blink.cmp").get_lsp_capabilities(),
    },
  },
  workspace_required = true,
}
