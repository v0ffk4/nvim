return {
  cmd = {
    "typescript-language-server --stdio",
  },
  filetypes = {
    "ts",
  },
  root_markers = {
    ".git",
    "package.json",
  },

  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
