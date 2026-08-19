return {
  -- NOTE: Handle BufNewFile
  {
    "ghillb/cybu.nvim",
    branch = "main",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" },
    config = function()
      local ok, cybu = pcall(require, "cybu")
      if not ok then
        return
      end
      cybu.setup()
    end,
  },

  -- NOTE: Telescope open intelligent
  {
    "danielfalk/smart-open.nvim",
    branch = "0.2.x",
    event = "VeryLazy",
    config = function()
      require("telescope").load_extension("smart_open")
    end,
    dependencies = {
      "kkharji/sqlite.lua",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-fzy-native.nvim" },
    },
  },

  -- NOTE: Add neoscroll este sirve para recorrer las ventana de manera mas fluida
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      --require("neoscroll").setup({})
    end,
  },

  -- NOTE: Add nvim-window este siver para agregar a cada ventana una letra para trasladarse a ella
  {
    "yorickpeterse/nvim-window",
    event = "VeryLazy",
    keys = {
      { "<leader>wa", "<cmd>lua require('nvim-window').pick()<cr>", desc = "nvim-window: Jump to window" },
    },
    config = true,
  },

  -- NOTE: Add windows este sirve para maximizar una ventana
  {
    "anuvyklack/windows.nvim",
    event = "VeryLazy",
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

  -- NOTE: Add colorful-winsep division de ventanas
  {
    "nvim-zh/colorful-winsep.nvim",
    config = true,
    event = { "WinNew", "VeryLazy" },
  },

  -- NOTE: Add winshift organizate windows
  { "sindrets/winshift.nvim", event = "VeryLazy" },

  -- NOTE: Add arena
  {
    "dzfrias/arena.nvim",
    event = "BufWinEnter",
    -- Calls `.setup()` automatically
    config = true,
  },

  -- WARNING: Este grupo de plugins ya se agregado VeryLazy.
}
