return {
  filetypes = { "svelte" },
  workspace_required = true,
  capabilities = {
    require("blink.cmp").get_lsp_capabilities(),
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true,
      },
    },
  },
}
