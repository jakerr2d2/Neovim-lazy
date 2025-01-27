require("codecompanion").setup({
  opts = {
    language = "Spanish", -- Default is "English"
  },

  strategies = {
    chat = {
      adapter = "copilot",
    },
    inline = {
      adapter = "copilot",
    },
  },
})
