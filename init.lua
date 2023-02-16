local options = {
    clipboard = "unnamedplus",   -- use system clipboard
    wrap = true,                 -- wrap long lines
    showmode = false,            -- hide mode (-- INSERT --)
    showmatch = true,            -- show matching 
    ignorecase = true,           -- case insensitive 
    hlsearch = true,             -- highlight search 
    incsearch = true,            -- incremental search
    tabstop = 4,                 -- number of columns occupied by a tab 
    softtabstop = 4,             -- see multiple spaces as tabstops so <BS> does the right thing
    expandtab = true,            -- converts tabs to white space
    shiftwidth = 4,              -- width for autoindents
    autoindent = true,           -- indent a new line the same amount as the line just typed
    number = true,               -- add line numbers
    relativenumber = true,       -- relative line numbers
    syntax = "enable",           -- syntax highlighting
    cursorline = true,           -- highlight current cursorline
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

-- Keyboard shortcuts
vim.keymap.set("n", "<C-f>", ":Telescope find_files<CR>", {})
vim.keymap.set("i", "<C-f>", "<ESC>:Telescope find_files<CR>", {})
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", {})

require('plugins')
require('lualine-config')
require('telescope-config')
require('nvim-tree-config')
require('nvim-treesitter-config')
