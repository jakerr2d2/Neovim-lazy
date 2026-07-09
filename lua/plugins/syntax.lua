return {
  dependencies = "vim-dadbod",
  -- NOTE: Add dropbar
  {
    "Bekaboo/dropbar.nvim",
    -- optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    --[[config = function()
      local dropbar_api = require("dropbar.api")
      vim.keymap.set("n", "<Leader>;", dropbar_api.pick, { desc = "Pick symbols in winbar" })
      vim.keymap.set("n", "[;", dropbar_api.goto_context_start, { desc = "Go to start of current context" })
      vim.keymap.set("n", "];", dropbar_api.select_next_context, { desc = "Select next context" })
    end,]]
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

  -- NOTE: Add move.nvim to move lines and blocks of code easily
  {
    "fedepujol/move.nvim",
    opts = {},
  },
}
