local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
    options = {
        icons_enabled = true,
        theme = 'gruvbox_dark',
        section_separators = '',
        component_separators = '',
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
}
