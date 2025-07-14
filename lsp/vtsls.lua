local svelte_plugin_path = vim.fn.stdpath("data")
  .. "/mason/packages/svelte-language-server/node_modules/typescript-svelte-plugin"

return {
  settings = {
    vtsls = {
      ts_ls = {
        globalPlugins = {
          {
            name = "typescript-svelte-plugin",
            location = svelte_plugin_path,
            enableForWorkspaceTypeScriptVersions = true,
          },
        },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "svelte" },
}
