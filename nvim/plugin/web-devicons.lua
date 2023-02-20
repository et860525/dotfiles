local status, devicons = pcall(require, "nvim-web-devicons")
if (not status) then return end

devicons.setup {
  -- your personnal icons can go here (to override)
  override = {
  },
  -- globally enable default icons (default to false)
  default = true
}
