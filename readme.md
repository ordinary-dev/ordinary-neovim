# Ordinary neovim

My neovim configuration.

## Getting started
```bash
# Delete your existing configuration
rm -r ~/.config/nvim
# Clone this repository (destination path may be changed)
git clone https://github.com/ordinary-dev/ordinary-neovim ~/ordinary-neovim
# Create a symlink
ln -s ~/ordinary-neovim ~/.config/nvim
```

Now open neovim and run `:PackerInstall`.
After installation, nvim-treesitter will start to compile required modules.
This step may take 5-10 minutes.

## List of plugins
- Packer - plugin manager
- Lualine - fancy status line
- Telescope - file search
- Nvim-Tree - file explorer
- Nvim-Treesitter - accurate syntax highlighting

## Required programs
- Ripgrep - used by telescope to find files

## Keybindings
- `Ctrl+f` - search for files
- `Ctrl+b` - open file explorer
