return {
  cmd = {
    "svelteserver",
    "--stdio",
  },
  filetypes = {
    "svelte",
    "svelte.ts",
  },
  root_markers = {
    ".git",
    "package.json",
  },

  single_file_support = true,
  workspace_required = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
