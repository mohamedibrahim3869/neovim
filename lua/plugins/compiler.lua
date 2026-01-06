-- Key mapping options for convenience
local opts = { noremap = true, silent = true }

-- Define your keybindings
-- Assuming your <leader> key is set (e.g., to space or backslash)
vim.keymap.set("n", "<leader>co", "<cmd>CompilerOpen<CR>", opts)
vim.keymap.set("n", "<leader>cr", "<cmd>CompilerRedo<CR>", opts)
vim.keymap.set("n", "<leader>ct", "<cmd>CompilerToggleResults<CR>", opts)

return {
  { -- 1. Zeioth/compiler.nvim (The Frontend)
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = {
      "stevearc/overseer.nvim",
      "nvim-telescope/telescope.nvim",
    },
    opts = {},
  },
  { -- 2. stevearc/overseer.nvim (The Task Runner)
    "stevearc/overseer.nvim",
    -- Optional: If you want to pin to a specific commit for stability
    -- commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        -- Change direction to 'float' to use a floating window
        direction = "float",

        -- Configuration for the floating window
        float = {
          -- Set the dimensions of the float relative to the screen size
          width = 0.8, -- 80% of screen width
          height = 0.6, -- 60% of screen height

          -- Placement function to calculate the center position
          placement = function(opts)
            -- opts contains the calculated width/height from the configuration above
            local width = vim.fn.floor(vim.o.columns * opts.width)
            local height = vim.fn.floor(vim.o.lines * opts.height)

            -- Calculate column and row for centered placement
            local col = vim.fn.floor((vim.o.columns - width) / 2)
            local row = vim.fn.floor((vim.o.lines - height) / 2)

            return {
              relative = "editor", -- Position relative to the main Neovim window
              width = width,
              height = height,
              col = col,
              row = row,
            }
          end,
        },
        default_detail = 1,
      },
      task_win = {
        direction = "float",
        float = {
          width = 0.8,
          height = 0.6,
          placement = function(opts)
            local width = vim.fn.floor(vim.o.columns * opts.width)
            local height = vim.fn.floor(vim.o.lines * opts.height)
            local col = vim.fn.floor((vim.o.columns - width) / 2)
            local row = vim.fn.floor((vim.o.lines - height) / 2)
            return {
              relative = "editor",
              width = width,
              height = height,
              col = col,
              row = row,
            }
          end,
        },
      },
    },
  },
}
