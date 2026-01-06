local transparent_theme = {
    normal = {
        a = { fg = "NONE", bg = "NONE" }, -- NONE inherits from your terminal/editor bg
        b = { fg = "NONE", bg = "NONE" },
        c = { fg = "NONE", bg = "NONE" },
    },
    insert = { a = { fg = "NONE", bg = "NONE" }, b = { fg = "NONE", bg = "NONE" } },
    visual = { a = { fg = "NONE", bg = "NONE" }, b = { fg = "NONE", bg = "NONE" } },
    replace = { a = { fg = "NONE", bg = "NONE" }, b = { fg = "NONE", bg = "NONE" } },
    command = { a = { fg = "NONE", bg = "NONE" }, b = { fg = "NONE", bg = "NONE" } },
}

return {
    {
        "nvim-lualine/lualine.nvim",
        opts = function()
            return {
                options = {
                    theme = transparent_theme,
                    globalstatus = true,
                    component_separators = "",
                    section_separators = "",
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = {},
                    lualine_x = { "filetype", "fileformat" },
                    lualine_y = { "progress", "location" },
                    lualine_z = { { "datetime", icon = "", style = "%I:%M%P" } },
                },
            }
        end,
    },
}
