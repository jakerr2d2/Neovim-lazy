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
    dependencies = "vim-dadbod",
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
}
