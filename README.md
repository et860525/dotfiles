# Mango's dotfiles

This repository contains my personal dotfiles for managing my development environment on Linux.

---

## ⚙ Prerequisites

- [Zsh](https://www.zsh.org/) or Bash
- [Oh My Zsh](https://ohmyz.sh/)
- [Neovim](https://neovim.io/) => v0.10.0
- [Nerd Font](https://www.nerdfonts.com/)
- [Git](https://git-scm.com/)
- [GNU Stow](https://www.gnu.org/software/stow/) (for managing dotfiles)

---

## 🚀 Usage

1. Clone this repository:
    ```bash
    git clone https://github.com/et860525/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    ```
2. Deploy your configurations using stow:
    ```bash
    stow zsh nvim tmux
    ```
3. Open Neovim and let lazy.nvim install all plugins automatically.

---

## ✨ Features

### Neovim

- [Lazy.nvim](https://github.com/folke/lazy.nvim): Package Manager

Plugins:
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): A blazing fast and easy-to-configure statusline
- [catppuccin.nvim](https://github.com/catppuccin/nvim): A beautiful color scheme


### Zsh

Plugins:
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Autosuggestions for zsh
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): Syntax highlighting

Package:
- [Nvm](https://github.com/nvm-sh/nvm): Node Version Manager
- [Bun](https://bun.com/): A fast all-in-one JavaScript runtime

---