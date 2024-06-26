return {
  {
    --NOTE: add nvim_context_vt
    "andersevenrud/nvim_context_vt",
    depndencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim_context_vt").setup({})
    end,
  },
  {
    --NOTE: add nvim-navbuddy
    "SmiteshP/nvim-navbuddy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = { lsp = { auto_attach = true } },
  },
  {
    --NOTE: enable live server
    "ngtuonghy/live-server-nvim",
    event = "VeryLazy",
    build = ":LiveServerInstall",
    config = function()
      require("live-server-nvim").setup({})
    end,
  },

  --WARNING: PLUGINS FOR CSV
  {
    --TODO: add decisive
    "emmanueltouzery/decisive.nvim",
  },
  {
    --TODO: add csvlens
    "theKnightsOfRohan/csvlens.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
    },
    config = true,
    opts = { --[[ Place your opts here ]]
    },
  },
}
