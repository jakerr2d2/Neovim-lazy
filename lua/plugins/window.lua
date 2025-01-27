return {

  -- TODO: add neoscroll este sirve para recorrer las ventana de manera mas fluida
  {
    "karb94/neoscroll.nvim",
    config = function()
      --require("neoscroll").setup({})
    end,
  },

  -- NOTE: add nvim-window este siver para agregar a cada ventana una letra para trasladarse a ella
  {
    "yorickpeterse/nvim-window",
    keys = {
      { "<leader>wa", "<cmd>lua require('nvim-window').pick()<cr>", desc = "nvim-window: Jump to window" },
    },
    config = true,
  },

  -- NOTE: add windows este sirve para maximizar una ventana
  {
    "anuvyklack/windows.nvim",
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim",
    },
    config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require("windows").setup()
    end,
  },

  -- NOTE: add colorful-winsep division de ventanas
  {
    "nvim-zh/colorful-winsep.nvim",
    config = true,
    event = { "WinNew" },
  },

  -- NOTE: add winshift organizate windows
  { "sindrets/winshift.nvim" },
}
