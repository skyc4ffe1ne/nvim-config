return {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('cyberdream').setup {
            -- Enable transparent background
            transparent = true,

            -- Enable italics comments
            italic_comments = false,

            -- Replace all fillchars with ' ' for the ultimate clean look
            hide_fillchars = false,

            -- Modern borderless telescope theme - also applies to fzf-lua
            borderless_telescope = true,

            -- Set terminal colors used in `:terminal`
            terminal_colors = true,

            -- Use caching to improve performance - WARNING: experimental feature - expect the unexpected!
            -- Early testing shows a 60-70% improvement in startup time. YMMV. Disables dynamic light/dark theme switching.
            cache = false, -- generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache

            theme = {
                variant = 'default', -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
                highlights = {
                    -- Highlight groups to override, adding new groups is also possible
                    -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

                    -- Example:
                    Comment = { fg = '#696969', bg = 'NONE', italic = true },

                    -- Complete list can be found in `lua/cyberdream/theme.lua`
                },

                -- Override a highlight group entirely using the color palette
                overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
                    -- Example:
                    --['@property'] = { fg = colors.light_pink, bold = false },
                    return {

                        Comment = { fg = '#6f6f6f', bg = 'NONE', italic = false },

                        --CursorLine = { bg = '#6f86ac' }, -- current line
                        Search = { fg = colors.black2, bg = colors.azure2 },
                        IncSearch = { fg = colors.black2, bg = colors.azure2 }, -- while i'm searching
                        CurSearch = { fg = colors.white, bg = colors.black2 }, -- while the cursor is on the match

                        Constant = { fg = colors.red2 },
                        String = { fg = colors.white },
                        Character = { fg = colors.black2 }, -- ?
                        Boolean = { fg = colors.azure2 },
                        Number = { fg = colors.azure2 },

                        Identifier = { fg = colors.light_azure }, -- name of function variable
                        Function = { fg = colors.light_purple2 },

                        Statement = { fg = colors.light_purple2 }, -- if,else,switch,for,return etc..
                        Operator = { fg = '#6f6f6f' }, -- = + - /etc/
                        Keyword = { fg = colors.purple2 },
                        --PreProc = { fg = colors.black }, -- #include (c)
                        --Label = { fg = colors.purple }, -- ::mylabel:: (lua)

                        Type = { fg = colors.grey }, --?

                        Special = { fg = '#a3a3a3' }, -- {} on global scope
                        Delimiter = { fg = '#6f6f6f' }, -- . {} () on local scope

                        Error = { fg = colors.red2 },
                    }
                end,

                -- Override a color entirely
                colors = {
                    -- For a list of colors see `lua/cyberdream/colours.lua`
                    -- Example:
                    black = '#000000',

                    light_pink = '#F06080',
                    red = '#F05080',

                    light_azure = '#BAE6FD',
                    light_grey = '#E5E5E5',

                    lime = '#bafdf3',

                    light_white = '#ECF2FF',

                    azure = '#7AD9FB',
                    grey = '#BBBBBB',

                    grey_100 = '#efefef',
                    grey_200 = '#c1c1c1',
                    grey_300 = '#8c8c8c',
                    grey_400 = '#6d6d6d',

                    purple = '#A390FF',
                    light_purple = '#CABEFF',

                    -- ovverride default colors
                    orange = '#88d3fb',
                    magenta = '#A390FF',
                    pink = '#bae7fd',

                    --- Only hsl

                    light_purple2 = '#bac4fd', -- 231°, 94%, 86%
                    purple2 = '#8d9ffb', -- 230°, 93%, 77%

                    light_red = '#fdbaba', -- 0°, 94%, 86%
                    red2 = '#fb8d8d', -- 0°, 94%, 77%

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
                },
            },

            -- Disable or enable colorscheme extensions
            --   extensions = {
            --       telescope = true,
            --       notify = true,
            --       mini = true,
            --       ...
            --   },
        }
        vim.cmd 'colorscheme cyberdream'
    end,
}
