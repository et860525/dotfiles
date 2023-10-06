local status, nvim_ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

nvim_ts.setup {
  ensure_installed = {
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
    "python",
    "prisma"
  },
  highlight = {
    enable = true,
    disable = { "markdown" }
  },

  autotag = {
    enable = true,
  }
}
