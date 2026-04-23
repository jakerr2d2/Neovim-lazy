return {
  -- NOTE: add decisive (CSV)
  {
    "emmanueltouzery/decisive.nvim",
  },

  -- NOTE: add csvlens
  {
    "theKnightsOfRohan/csvlens.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = true,
    opts = {},
  },

  -- NOTE: Uppercase in SQL
  {
    "jsborjesson/vim-uppercase-sql",
  },

  -- NOTE: Translate de Neovim
  {
    "uga-rosa/translate.nvim",
    config = function()
      require("translate").setup({
        default = {
          command = "translate_shell",
        },
      })
    end,
  },

  -- NOTE: undo-glow.lua
  {
    "y3owk1n/undo-glow.nvim",
    version = "*", -- remove this if you want to use the `main` branch
    opts = {
      animation = {
        enabled = true, -- whether to turn on or off for animation
        duration = 100, -- in ms
        animation_type = "rainbow", -- default to "fade", see more at animation section on how to change or create your own
        fps = 120, -- change the fps, normally either 60 / 120, but it can be whatever number
        easing = "in_out_cubic", -- see more at easing section on how to change and create your own
        window_scoped = false, -- this uses an experimental extmark options (it might not work depends on your version of neovim)
      },
    },
  },
}
