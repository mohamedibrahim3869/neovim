return {
    {
        "folke/snacks.nvim",
        opts = {
            explorer = { enabled = false }, -- Disables the built-in Snacks explorer
            picker = {
                sources = {
                    explorer = { enabled = false }, -- Specifically disables the picker-based explorer
                },
            },
        },
    },
}
