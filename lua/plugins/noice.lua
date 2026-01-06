-- ~/.config/nvim/lua/plugins/noice.lua

return {
    {
        "folke/noice.nvim",
        opts = {
            -- 1. Disable Noice's command-line UI
            cmdline = {
                enabled = false,
            },
            -- 2. Disable Noice's message UI
            -- NOTE: Disabling messages also helps ensure the cmdline is properly restored
            messages = {
                enabled = false,
            },
            -- 3. Disable the pop-up menu for completion (optional, but recommended)
            popupmenu = {
                enabled = false,
            },
        },
    },
    { "rcarriga/nvim-notify", enabled = false },
}
