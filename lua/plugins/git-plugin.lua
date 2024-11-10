return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
    },
    opts = {
      integrations = {
        telescope = true,
      },
      kind = "floating",
    },
  },
}
