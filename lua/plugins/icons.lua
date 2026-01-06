return {
  {
    "nvim-mini/mini.icons",
    opts = {
      file = {
        -- Previous overrides
        [".c"] = { glyph = "", hl = "MiniIconsAzure" },
        [".cpp"] = { glyph = "", hl = "MiniIconsBlue" },
        [".css"] = { glyph = "", hl = "MiniIconsAzure" },
        [".html"] = { glyph = "", hl = "MiniIconsOrange" },
        [".js"] = { glyph = "", hl = "MiniIconsYellow" },
        [".ts"] = { glyph = "", hl = "MiniIconsAzure" },
        [".jsx"] = { glyph = "", hl = "MiniIconsCyan" },
        [".tsx"] = { glyph = "", hl = "MiniIconsCyan" },

        -- New: Tmux Config File
        [".tmux.conf"] = { glyph = "", hl = "MiniIconsGreen" },
      },
      filetype = {
        -- Previous overrides
        c = { glyph = "", hl = "MiniIconsAzure" },
        cpp = { glyph = "", hl = "MiniIconsBlue" },
        css = { glyph = "", hl = "MiniIconsAzure" },
        html = { glyph = "", hl = "MiniIconsOrange" },
        javascript = { glyph = "", hl = "MiniIconsYellow" },
        typescript = { glyph = "", hl = "MiniIconsAzure" },
        javascriptreact = { glyph = "", hl = "MiniIconsCyan" },
        typescriptreact = { glyph = "", hl = "MiniIconsCyan" },

        -- New: Tmux Filetype
        tmux = { glyph = "", hl = "MiniIconsGreen" },
      },
    },
  },
}
