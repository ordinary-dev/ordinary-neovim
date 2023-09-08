local status, neotree = pcall(require, "neo-tree")
if not status then return end

vim.fn.sign_define("DiagnosticSignError", {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo", {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint", {text = "󰌵", texthl = "DiagnosticSignHint"})

neotree.setup({
    close_if_last_window = true,
    enable_git_status = false,
})

vim.keymap.set("n", "<C-t>", ":Neotree reveal<CR>", {})
vim.keymap.set("i", "<C-t>", "<ESC>:Neotree reveal<CR>", {})
