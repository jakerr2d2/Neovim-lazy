return {
  -- NOTE: Add project
  {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-telescope/telescope-file-browser.nvim" },
    opts = {
      manual_mode = false,
      detection_methods = { "pattern", "lsp" },
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
      silent_chdir = true,
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      --
    },
    config = function(_, opts)
      require("project_nvim").setup(opts)
      LazyVim.on_load("telescope.nvim", function()
        require("telescope").load_extension("file_browser")
        require("telescope").load_extension("projects")
      end)
    end,
  },
}
