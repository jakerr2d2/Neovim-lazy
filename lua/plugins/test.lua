return {
  -- NOTE: Add neotest
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = { "neotest-python" },
    },
  },

  -- NOTE: Add atac.nvim
  -- Testear APIs y scripts de manera rápida y sencilla con atac.nvim.
  {
    "NachoNievaG/atac.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function()
      require("atac").setup({
        dir = "~/.config/atac/", -- By default, the dir will be set as /tmp/atac
      })
    end,
  },
}
