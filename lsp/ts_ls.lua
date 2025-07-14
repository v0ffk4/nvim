return {
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "svelte",
  },
  root_markers = {
    ".git",
    "package.json",
  },
  workspace_required = true,
  capabilities = {
    require("blink.cmp").get_lsp_capabilities(),
  },
}
