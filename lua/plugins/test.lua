return {
  -- NOTE: Add neotest
  {
    "nvim-neotest/neotest",
    event = "VeryLazy",
    opts = {
      adapters = { "neotest-python" },
    },
  },

  -- NOTE: Add atac.nvim
  -- Testear APIs y scripts de manera rápida y sencilla con atac.nvim.
  {
    "NachoNievaG/atac.nvim",
    event = "VeryLazy",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function()
      require("atac").setup({
        dir = "~/.config/atac/", -- By default, the dir will be set as /tmp/atac
      })
    end,
  },

  -- WARNING: Se agrega el event= "VeryLazy" para que se cargue el plugin de manera diferida y no afecte el tiempo de inicio de Neovim.
}
