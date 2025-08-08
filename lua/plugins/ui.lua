return {
  -- NOTE: Add ray
  {
    "sudoerwx/vim-ray-so-beautiful",
    event = "VeryLazy",
  },

  -- NOTE: Zen mode
  {
    "folke/zen-mode.nvim",
    opts = {},
  },

  -- NOTE: True-zen mode
  {
    "Pocco81/true-zen.nvim",
    config = function()
      require("true-zen").setup({
        integrations = {
          kitty = {
            enabled = true,
            font = "+5",
          },
        },
      })
    end,
  },

  -- NOTE: Beautiful object rain effect in Neovim
  {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
      require("drop").setup({ theme = "arcade", filetypes = { "Dashboard" } })
    end,
  },

  -- NOTE: Smooth cursor
  {
    "gen740/SmoothCursor.nvim",
    config = function()
      require("smoothcursor").setup({ cursor = "󰀫" })
      -- ... resto de configuración
    end,
  },

  -- TODO: Reactive plugin
  {
    "rasulomaroff/reactive.nvim",
    config = function()
      require("reactive").setup({
        load = { "catppuccin-mocha-cursor", "catppuccin-mocha-cursorline" },
      })
    end,
  },
}
