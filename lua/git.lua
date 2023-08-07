-- Git decorations: signs for added, removed, and changed lines
local status, gitsigns = pcall(require, "gitsigns")
if (not status) then return end

gitsigns.setup {
    signcolumn = true,
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        vim.keymap.set('v', '<leader>hs', function()
            gs.stage_hunk {
                vim.fn.line('.'),
                vim.fn.line('v')
            }
        end, {})
        vim.keymap.set('n', '<leader>tb', gs.toggle_current_line_blame, {})
    end
}
