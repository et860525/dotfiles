--
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local ts = require("nvim-treesitter")

    -- Common parsers
    local parsers = {
      "lua", "vim", "vimdoc", "query", "bash",
      "markdown", "markdown_inline", "json", "yaml",
      "html", "css", "javascript", "typescript", "python",
      "rust",
    }

    -- Install parser
    for _, lang in ipairs(parsers) do
      ts.install(lang)
    end

    -- Native highlighting and indentation for Neovim 0.12
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}