local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'williamboman/mason.nvim' -- Manage LSP servers
  use 'williamboman/mason-lspconfig.nvim' -- Bridges mason.nvim with the lspconfig plugin

  use {
    'nvim-treesitter/nvim-treesitter', -- Syntax highlighter
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'numToStr/Comment.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua' -- A File Explorer For Neovim
  use 'glepnir/lspsaga.nvim' -- LSP UI
  use 'folke/zen-mode.nvim' -- Focsing on the code
  use 'akinsho/nvim-bufferline.lua'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim' -- Fuzzy finder
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  use 'norcalli/nvim-colorizer.lua' -- Color highlighter

  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim') -- Prettier plugin

end)
