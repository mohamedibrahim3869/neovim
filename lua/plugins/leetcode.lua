return {
  "kawre/leetcode.nvim",
  -- Keep cmd = 'Leet' for lazy loading, but ensure keymaps are defined correctly
  cmd = "Leet",
  opts = {
    lang = "cpp",
    "javascript",

    storage = {
      -- Set the root directory to ~/leetcode/ and use $slug for per-problem folders.
      root = vim.fn.expand("~/leetcode") .. "/$slug/",
    },

    code = {
      path = "$lang.$extension",
      cpp = { "cpp", "cpp" },
      javascript = { "js", "javascript" },
      python = { "py", "python" },
    },

    picker = {
      provider = "telescope",
    },

    template = {
      ["cpp"] = {
        extension = ".cpp",
        template = [=[
#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <map>
#include <set>
#include <queue>
#include <stack>

using namespace std;

// LeetCode Problem Definition: {{template}}

class Solution {
public:
    {{code}}
};

// You can add your main function for local testing here
/*
int main() {
    Solution s;
    // Example usage:
    // vector<int> nums = {1, 2, 3};
    // int result = s.myFunction(nums);
    // cout << "Result: " << result << endl;
    return 0;
}
*/
        ]=],
      },
      ["javascript"] = { extension = ".js" },
      ["python3"] = { extension = ".py" },
    },
  },

  -- Dependencies
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate html" },
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },

  -- Keymaps (FIXED)
  keys = {
    -- 1. Dashboard: Uses the command, which loads the plugin automatically
    { "<leader>ll", "<cmd>Leet<cr>", desc = "LeetCode: Menu" },

    -- 2. Pick Problem: Uses the command, which loads the plugin automatically
    { "<leader>lp", "<cmd>Leet pick<cr>", desc = "LeetCode: Pick Problem" },

    -- 3. In-Buffer Handlers: These require the plugin to be loaded.
    -- We define them to call the module functions directly, which forces LazyVim to load the plugin
    -- when the key is pressed, but does not execute the function call at startup.
    {
      "<leader>lt",
      function()
        require("leetcode.handler").test()
      end,
      desc = "LeetCode: Test Solution",
      mode = "n",
      ft = { "cpp", "javascript", "python" },
    },
    {
      "<leader>ls",
      function()
        require("leetcode.handler").submit()
      end,
      desc = "LeetCode: Submit Solution",
      mode = "n",
      ft = { "cpp", "javascript", "python" },
    },
    {
      "<leader>lr",
      function()
        require("leetcode.handler").test_local()
      end,
      desc = "LeetCode: Local Test",
      mode = "n",
      ft = { "cpp", "javascript", "python" },
    },
    {
      "<leader>lg",
      function()
        require("leetcode.handler").get_test_case()
      end,
      desc = "LeetCode: Get Example Case",
      mode = "n",
      ft = { "cpp", "javascript", "python" },
    },

    -- Fix for the trailing character error on the cookie command:
    -- You need to use the full command string for complex commands in keymaps
    -- or, better yet, use the plugin's main command functionality.
    -- However, the handler calls are cleaner for the in-buffer actions.
  },
}
