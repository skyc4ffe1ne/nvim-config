local colors = {
    bg = '#434343',

    bgN = '#000',
    fgN = '#e5e7eb',

    bgI = '#e5e7eb',
    fgI = '#262626',

    bgV = '#60a5fa',
    fgV = '#262626',

    fg = '#fff324',

    black = '#000000',
    --  white = '#ffffff',

    light_pink = '#F06080',
    pink = '#F05080',

    light_azure = '#BAE6FD',
    light_grey = '#E5E5E5',

    lime = '#B3E8B4',
    light_white = '#ECF2FF',

    azure = '#7AD9FB',
    grey = '#BBBBBB',

    purple = '#A390FF',
    light_purple = '#CABEFF',

    light_purple2 = '#bac4fd', -- 231°, 94%, 86%
    purple2 = '#8d9ffb',     -- 230°, 93%, 77%

    light_red = '#fdbaba',   -- 0°, 94%, 86%
    red2 = '#fb8d8d',        -- 0°, 94%, 77%

    light_orange = '#fddcba',
    orange2 = '#fbc48d', --

    azure2 = '#8dd5fb',

    light_yellow = '#fcfdba',
    yellow = '#f9fb8d',

    light_green = '#dafdba',
    green = '#c2fb8d',

    light_lime = '#bafdd1',
    lime2 = '#8dfbb4',

    white = '#ebf8fe',
    black2 = '#02141d',
}

local custom = {
    normal = {
        a = { fg = colors.white, bg = colors.purple2, gui = 'bold' },
        b = { fg = colors.light_azure2, bg = colors.purple, gui = 'italic' },
        c = { fg = colors.purple2, bg = colors.bg },
        x = { fg = colors.white, bg = colors.bg },
        y = { fg = colors.azure, bg = colors.bg, gui = 'italic' },
    },
    insert = {
        a = { fg = colors.black2, bg = colors.azure2, gui = 'bold' },
        c = { fg = colors.azure2, bg = colors.bg },
        x = { fg = colors.black2, bg = colors.bg },
    },
    visual = {
        a = { fg = colors.fgV, bg = colors.bgV, gui = 'bold' },
        c = { fg = colors.bgV, bg = colors.bg },
        x = { fg = colors.fgv, bg = colors.bg },
    },
    terminal = {
        a = { fg = colors.purple, bg = colors.bg, gui = 'bold' },
        z = { fg = colors.light_purple, bg = colors.bg },
        x = { fg = colors.purple, bg = colors.bg },
    },
}

return custom
