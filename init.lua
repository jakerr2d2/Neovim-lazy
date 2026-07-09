-- WARNING:
--[[
  _____       _ _     _
  \_   \_ __ (_) |_  | |_   _  __ _
   / /\/ '_ \| | __| | | | | |/ _` |
/\/ /_ | | | | | |_ _| | |_| | (_| |
\____/ |_| |_|_|\__(_)_|\__,_|\__,_|
]]

-- NOTE: Bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- NOTE: Add some plugins
require("complements.dashboard")
require("complements.format")
require("complements.ufo")
require("complements.oil_nvim")
require("complements.move_nvim")
require("overseer").setup()
--require("complements.data")

-- My favorite language is Spanish and changing it is a complicated task
--Hello, how are you my dear friend? I'm calling you to see how you are.
