return {
  -- NOTE: add template
  {
    "glepnir/template.nvim",
    cmd = { "Template", "TemProject" },
    config = function()
      require("template").setup({
        temp_dir = "~/.config/nvim/templates",
        author = "joshua bushido",
        email = "bushido@pm.me",
        github = "https://github.com/bushido",
      })
    end,
  },
}
