require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'ayu',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 300,
            tabline = 300,
            winbar = 300,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {{
            'filename',
            color = { fg = '#ffffff' }
        }
    },
    lualine_x = {{
        'encoding',
        color = { fg = '#ffffff' }
    },{
        'fileformat',
        color = { fg = '#ffffff' }
    },{
        'filetype',
        color = { fg = '#ffffff' }
    }},
    lualine_y = {'progress'},
    lualine_z = {'windows', 'tabs'}
},
inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
},
tabline = {},
winbar = {},
inactive_winbar = {},
extensions = {}
}
