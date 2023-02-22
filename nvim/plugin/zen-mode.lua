local status, zen_mode = pcall(require, 'zen-mode')
if (not status) then return end

zen_mode.setup({
  window = {
    backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    width = 120, -- width of the Zen window
    height = 1, -- height of the Zen window
  },
  plugins = {
    options = {
      enabled = true,
      ruler = false, -- disables the ruler text in the cmd line area
      showcmd = false, -- disables the command in the last line of the screen
    },
    twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
    gitsigns = { enabled = false }, -- disables git signs
    tmux = { enabled = false }, -- disables the tmux statusline
    kitty = {
      enabled = false,
      font = "+4", -- font size increment
    },
    alacritty = {
      enabled = false,
      font = "14", -- font size
    },
  },
})
