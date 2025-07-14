return {
  root_markers = {
    ".git",
    "package.json",
  },
  workspace_required = true,
  capabilities = {
    require("blink.cmp").get_lsp_capabilities(),
  },
}
