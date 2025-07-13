-- local serverPath = vim.fn.stdpath("data")
--   .. "/mason/packages/svelte-language-server/node_modules/typescript-svelte-plugin"
-- return {
--   ts_ls = {
--     globalPlugins = {
--       {
--         name = "typescript-svelte-plugin",
--         -- location = { "svelte-language-server", "/node_modules/typescript-svelte-plugin" },
--         location = serverPath,
--         enableForWorkspaceTypeScriptVersions = true,
--       },
--     },
--   },
--   filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "svelte" },
-- }

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
            languages = { "svelte" },
            configNamespace = "typescript",
          },
        },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "svelte" },
}
