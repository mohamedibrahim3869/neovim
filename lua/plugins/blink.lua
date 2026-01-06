return {
    {
        "saghen/blink.cmp",
        opts = {
            -- Keep your rounded borders from before
            completion = {
                menu = { border = "rounded" },
                documentation = { window = { border = "rounded" } },
            },
            signature = { window = { border = "rounded" } },

            -- Add the Tab cycling logic here
            keymap = {
                preset = "enter", -- or 'default' / 'super-tab'
                ["<Tab>"] = { "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
            },
        },
    },
}
