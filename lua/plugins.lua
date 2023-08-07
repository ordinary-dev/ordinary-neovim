local status, packer = pcall(require, "packer")
if (not status) then return end

packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        tag = 'v0.6',
    }

    -- Lualine
    use 'nvim-lualine/lualine.nvim'
    
    -- Gruvbox theme
    use 'ellisonleao/gruvbox.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = {
            'nvim-lua/plenary.nvim',
        },
    }

    -- Nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        tag = 'v0.9.0',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- LSP
    use 'neovim/nvim-lspconfig'
end)
