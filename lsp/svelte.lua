return {
  filetypes = { "svelte", "ts" },
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true,
      },
    },
  },
  workspace_required = true,
}
