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
      require("drop").setup({ theme = "matrix", filetypes = { "Dashboard" } })
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

  -- NOTE: Reactive plugin
  {
    "rasulomaroff/reactive.nvim",
    config = function()
      require("reactive").setup({
        load = { "catppuccin-mocha-cursor", "catppuccin-mocha-cursorline" },
      })
    end,
  },

  -- NOTE: Add bufferline
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },

  -- NOTE: Add Barbar
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
      sidebar_filetypes = {
        -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
        NvimTree = true,
        -- Or, specify the text used for the offset:
        undotree = {
          text = "undotree",
          align = "center", -- *optionally* specify an alignment (either 'left', 'center', or 'right')
        },
        -- Or, specify the event which the sidebar executes when leaving:
        ["neo-tree"] = { event = "BufWipeout" },
        -- Or, specify all three
        Outline = { event = "BufWinLeave", text = "symbols-outline", align = "right" },
      },
      animation = true,
    },
    version = "^1.0.0", -- optional: only update when a new 1.x version is released
  },

  -- NOTE: Add bufferin
  {
    "wasabeef/bufferin.nvim",
    cmd = { "Bufferin" },
    config = function()
      require("bufferin").setup()
    end,
    -- Optional dependencies for enhanced experience
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- For file icons
      -- 'willothy/nvim-cokeline',     -- For buffer line integration
      -- 'akinsho/bufferline.nvim',    -- Alternative buffer line
    },
  },
}
