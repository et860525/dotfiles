-- LSP
return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "ruff",
        "rust_analyzer",
      },
      automatic_enable = true,
    },
    config = function(_, opts)
      require("mason").setup()
      require("mason-lspconfig").setup(opts)

      -- Neovim LSP Api
      if vim.lsp.config then
        vim.lsp.config("lua_ls", {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
            },
          },
        })
      else
        require("lspconfig").lua_ls.setup({
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
            },
          },
        })
      end

      -- LSP keys
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
          end

          map("gd", vim.lsp.buf.definition, "跳至定義")
          map("K", vim.lsp.buf.hover, "查看文檔")
          map("<leader>rn", vim.lsp.buf.rename, "重新命名")
          map("<leader>ca", vim.lsp.buf.code_action, "修復建議")
          map("[d", vim.diagnostic.goto_prev, "上一個錯誤")
          map("]d", vim.diagnostic.goto_next, "下一個錯誤")
        end,
      })
    end,
  },
}

