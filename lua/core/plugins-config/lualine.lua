require('lualine').setup {
    options = {
        icons_enabled = true,
        --theme = 'tequila-sunrise',
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1
            }
        }
    }
}
