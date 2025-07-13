return {
  -- Mason
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      {
        "neovim/nvim-lspconfig",
        config = function()
          vim.api.nvim_create_autocmd("LspAttach", {
            desc = "LSP actions",
            callback = function(event)
              local opts = { buffer = event.buf }

              -- these will be buffer-local keybindings
              -- because they only work if you have an active language server
              vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
              vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
              vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
              vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
              vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
              vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
              vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
              vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
              vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
              vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
              -- Svelte fix
              local client = vim.lsp.get_client_by_id(event.data.client_id)
              if client.name == "svelte" then
                vim.api.nvim_create_autocmd("BufWritePost", {
                  pattern = { "*.js", "*.ts" },
                  group = vim.api.nvim_create_augroup("svelte_ondidchangetsorjsfile", { clear = true }),
                  callback = function(ctx)
                    -- Here use ctx.match instead of ctx.file
                    client:notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
                  end,
                })
              end
            end,
          })
        end,
      },
    },
  },
}
