return {
  {
    "akinsho/toggleterm.nvim",
    -- The 'opts' here sets the DEFAULT behavior if you call :ToggleTerm without arguments
    opts = {
      direction = "float", -- Default direction is now floating
      -- You can add other global options here if needed
      float_opts = {
        border = "rounded",
        winblend = 20,
      },
    },
    -- Define specific keymaps for each direction
    keys = {
      -- 1. Toggle the default (floating) terminal
      {
        "<leader>tf",
        "<cmd>ToggleTerm<CR>",
        mode = { "n", "t" },
        desc = "Toggle Floating Terminal",
      },
      -- Alternative keymap for float
      {
        "<C-_>", -- Often <C-/> on US keyboards
        "<cmd>ToggleTerm<CR>",
        mode = { "n", "t" },
        desc = "Toggle Floating Terminal",
      },

      -- 2. Toggle a horizontal terminal
      {
        "<leader>th",
        "<cmd>ToggleTerm direction=horizontal size=15<CR>",
        mode = { "n", "t" },
        desc = "Toggle Horizontal Terminal",
      },

      -- 3. Toggle a vertical terminal
      {
        "<leader>tv",
        "<cmd>ToggleTerm direction=vertical size=40<CR>",
        mode = { "n", "t" },
        desc = "Toggle Vertical Terminal",
      },

      -- 4. Exit terminal mode back to normal mode easily
      {
        "<C-c>",
        "<C-\\><C-n>",
        mode = { "n", "t" },
        desc = "Exit terminal mode",
      },
    },
  },
}
