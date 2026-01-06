return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters = {
                -- For Lua
                stylua = {
                    prepend_args = { "--indent-width", "4", "--indent-type", "Spaces" },
                },
                -- For JS, TS, HTML, CSS, JSON, YAML
                prettier = {
                    args = { "--tab-width", "4", "--single-quote", "true", "--no-semi", "false", "$FILENAME" },
                },
                -- For Python (if using Black)
                black = {
                    prepend_args = { "--line-length", "88" }, -- Black is 4 by default, but stays 4
                },
                -- For Shell
                shfmt = {
                    prepend_args = { "-i", "4" },
                },
                -- For C / C++
                clang_format = {
                    prepend_args = { "--style={IndentWidth: 4}" },
                },
            },
        },
    },
}
