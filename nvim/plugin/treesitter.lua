local status, nvim_ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

nvim_ts.setup {
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "toml",
    "fish",
    "json",
    "yaml",
    "rust",
    "css",
    "html",
    "svelte",
    "lua",
    "pug",
    "prisma"
  },
  highlight = {
    enable = true,
    disable = {},
  },

  autotag = {
    enable = true,
  }
}
