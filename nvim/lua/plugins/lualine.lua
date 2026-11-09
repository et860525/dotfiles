return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/nvim", },
  config = function()
      require("lualine").setup({
        options = {
          theme = "catppuccin-mocha",
          component_separators = "|",
          section_separators = "",
        }
      })
  end,
}
