return {
    "CRAG666/code_runner.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "RunCode", "RunFile", "RunProject", "RunClose" },
    opts = {
        -- Choose where the output appears: "float", "tab", or "toggleterm"
        mode = "toggleterm",
        focus = true,
        filetype = {
            -- C: Compiles with gcc and runs
            c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",

            -- C++: Compiles with g++ and runs
            cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",

            -- Python: Runs with python3
            python = "python3 -u",

            -- JavaScript: Runs with node
            javascript = "node",

            -- TypeScript: Runs with ts-node or deno
            typescript = "ts-node",

            -- Java: Compiles and runs
            java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        },
    },
    keys = {
        { "<leader>r", group = "code runner" }, -- Add group for Which-Key
        { "<leader>rc", ":RunCode<CR>", desc = "Run Code" },
        { "<leader>rf", ":RunFile<CR>", desc = "Run File" },
        { "<leader>rx", ":RunClose<CR>", desc = "Close Runner" },
    },
}
