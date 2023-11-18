local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Git
  { 'lewis6991/gitsigns.nvim', tag = 'v0.6' },
  -- Lualine
  { 'nvim-lualine/lualine.nvim' },
  -- Gruvbox theme
  { 'ellisonleao/gruvbox.nvim' },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },

  -- Nvim-treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    tag = 'v0.9.1',
    init = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },

  -- LSP
  { 'neovim/nvim-lspconfig' },
  {
    'ray-x/lsp_signature.nvim',
  },

  -- Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
  },
})
