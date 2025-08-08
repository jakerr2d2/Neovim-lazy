return {
  -- NOTE: add nvim-navbuddy
  {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = { lsp = { auto_attach = true } },
  },

  -- NOTE: enable live server
  {
    "ngtuonghy/live-server-nvim",
    event = "VeryLazy",
    build = ":LiveServerInstall",
    config = function()
      require("live-server-nvim").setup({})
    end,
  },

  -- NOTE: add php easy
  {
    "ta-tikoma/php.easy.nvim",
    dependencies = { "L3MON4D3/LuaSnip" },
    opts = {
      onAppend = { engine = "LuaSnip" },
    },
    keys = {
      { "-#", "<CMD>PHPEasyAttribute<CR>", desc = "Attribute", ft = "php" },
      { "-b", "<CMD>PHPEasyDocBlock<CR>", desc = "DocBlock", ft = "php" },
      -- ... resto de keymaps
    },
  },
}
