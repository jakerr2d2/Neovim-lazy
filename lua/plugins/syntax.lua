return {
  dependencies = "vim-dadbod",
  -- NOTE: Add dropbar
  {
    "Bekaboo/dropbar.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
  },

  -- NOTE: Improve Treesitter highlighting
  {
    "m-demare/hlargs.nvim",
  },

  -- NOTE: Add nvim_context_vt
  {
    "andersevenrud/nvim_context_vt",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim_context_vt").setup({})
    end,
  },

  -- NOTE: Add Hlargs to highlight arguments better in several languages.
  {
    "m-demare/hlargs.nvim",
    config = function()
      require("hlargs").setup()
    end,
  },
}
