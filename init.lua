--NOTE: bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--NOTE: add some plugins
require("complements.dashboard")

--NOTE: add some Neo-tree
require("neo-tree").setup({
  filesystem = {
    hijack_netrw_behavior = "disabled",
  }
})
