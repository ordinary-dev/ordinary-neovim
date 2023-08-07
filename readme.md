# Ordinary neovim

My neovim configuration.

## Getting started
```bash
# Move your existing configuration somewhere else
mv ~/.config/nvim{,-old}
# Clone this repository
git clone https://github.com/ordinary-dev/ordinary-neovim ~/.config/nvim
```

Now open neovim and run `:PackerInstall`.
After installation, nvim-treesitter will start to compile required modules.
This step may take 5-10 minutes.

## List of plugins
- [Packer](https://github.com/wbthomason/packer.nvim) - plugin manager written in lua
- [Lualine](https://github.com/nvim-lualine/lualine.nvim) - fancy status line
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) - file search
- [Nvim-Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - accurate syntax highlighting
- [Nvim-Lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) - git integration
- [Gruvbox theme](https://github.com/ellisonleao/gruvbox.nvim)

## Required programs and files
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - used by telescope to find files (respects `.gitignore`!)
- [Pathed 'nerd' font](https://github.com/ryanoasis/nerd-fonts) - used by lualine (it looks like a regular font, but it has embeded icons)

## Key bindings
- `space + hs` - stage hunk
- `space + tb` - toggle `git blame`
- `ctrl + f` - search for files
