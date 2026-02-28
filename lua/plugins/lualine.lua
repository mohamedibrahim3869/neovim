return {
    {
        "nvim-lualine/lualine.nvim",
        opts = function()
            return {
                options = {
                    theme = "auto",
                    globalstatus = true,
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
