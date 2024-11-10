return {
  "ahmedkhalf/project.nvim",
  opts = {
    manual_mode = false,
    detection_methods = { "pattern" },
    patterns = {
      ".git",
      "pyproject.toml",
      "setup.py",
      "requirements.txt",
      "tests",
      "README.md",
      "_darcs",
      ".hg",
      ".bzr",
      ".svn",
      "Makefile",
      "package.json",
    },
  },
  event = "VeryLazy",
  config = function(_, opts)
    require("project_nvim").setup(opts)
    LazyVim.on_load("telescope.nvim", function()
      require("telescope").load_extension("projects")
    end)
  end,
}
