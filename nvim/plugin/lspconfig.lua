local status, lspconfig = pcall(require, "lspconfig")
if (not status) then return end

local on_attach = function(client, bufnr)
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities
}

lspconfig.jsonls.setup{
  on_attach = on_attach,
  filetypes = { "json" },
  cmd = { "vscode-json-language-server", "--stdio" },
  capabilities = capabilities
}

lspconfig.svelte.setup {
  on_attach = on_attach,
  filetypes = { "svelte" },
  cmd = { "svelteserver", "--stdio" },
  capabilities = capabilities
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  filetypes = { "rust" },
  capabilities = capabilities
}

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
  capabilities = capabilities
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  capabilities = capabilities
}
