return {

  -- TODO: Add ray
  {
    "sudoerwx/vim-ray-so-beautiful",
    event = "VeryLazy",
  },

  -- TODO: Uppercase in SQL
  {
    "jsborjesson/vim-uppercase-sql",
    dependencies = "vim-dadbod",
  },

  -- TODO: Gradle en Neovim
  {
    "hdiniz/vim-gradle",
  },

  -- WARNING: ZEN MODE
  -- TODO: Zen mode
  {
    "folke/zen-mode.nvim",
    opts = {},
  },

  -- TODO: true-zen mode
  {
    "Pocco81/true-zen.nvim",
    config = function()
      require("true-zen").setup({})
    end,
  },

  -- TODO: Add code_runner
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("/complements/coderunner")
    end,
  },

  -- TODO: Add autosave
  {
    "0x00-ketsu/autosave.nvim",
    -- lazy-loading on events
    event = { "InsertLeave", "TextChanged" },
    config = function()
      require("autosave").setup({})
    end,
  },

  -- NOTE: Beautiful object rain effect in Neovim
  {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
      require("drop").setup({ theme = "snow", filetypes = { "Dashboard" } })
    end,
  },

  -- TODO: Correct the text so that it is not so long.
  {
    "preservim/vim-pencil",
    config = function()
      -- Configuración de vim-pencil
      vim.g["pencil#textwidth"] = 80
      vim.g["pencil#wrapModeDefault"] = "soft"
      vim.cmd([[
          autocmd BufRead,BufNewFile * call pencil#init()
      ]])
    end,
  },

  -- TODO: Flowline in Git
  {
    "rbong/vim-flog",
    lazy = true,
    cmd = { "Flog", "Flogsplit", "Floggit" },
    dependencies = {
      "tpope/vim-fugitive",
    },
  },

  -- TODO: Translate de Neovim
  {
    "uga-rosa/translate.nvim",
    config = function()
      require("translate").setup({
        default = {
          command = "translate_shell",
        },
      })
    end,
  },

  -- TODO: Reactive plugin
  {
    "rasulomaroff/reactive.nvim",
    config = function()
      require("reactive").setup({
        load = { "catppuccin-mocha-cursor", "catppuccin-mocha-cursorline" },
      })
    end,
  },

  -- TODO: Telescope File Browser
  --[[
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },]]
  --

  -- TODO: Handle BufNewFile
  {
    "ghillb/cybu.nvim",
    branch = "main", -- timely updates
    -- branch = "v1.x", -- won't receive breaking changes
    dependencies = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" }, -- optional for icon support
    config = function()
      local ok, cybu = pcall(require, "cybu")
      if not ok then
        return
      end
      cybu.setup()
      vim.keymap.set("n", "K", "<Plug>(CybuPrev)")
      vim.keymap.set("n", "J", "<Plug>(CybuNext)")
      vim.keymap.set({ "n", "v" }, "<c-s-tab>", "<plug>(CybuLastusedPrev)")
      vim.keymap.set({ "n", "v" }, "<c-tab>", "<plug>(CybuLastusedNext)")
    end,
  },

  -- TODO: Smooth cursor
  {
    "gen740/SmoothCursor.nvim",
    config = function()
      require("smoothcursor").setup({ cursor = "󰀫" })

      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#8a9baa" })

      local autocmd = vim.api.nvim_create_autocmd

      autocmd({ "ModeChanged" }, {
        callback = function()
          local current_mode = vim.fn.mode()
          if current_mode == "n" then
            vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#8a9baa" })
            vim.fn.sign_define("smoothcursor", { text = "👾" })
          elseif current_mode == "v" then
            vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
            vim.fn.sign_define("smoothcursor", { text = " " })
          elseif current_mode == "V" then
            vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
            vim.fn.sign_define("smoothcursor", { text = "󱅄" })
          elseif current_mode == "\22" then
            vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
            vim.fn.sign_define("smoothcursor", { text = "󱍓 " })
          elseif current_mode == "i" then
            vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#668aab" })
            vim.fn.sign_define("smoothcursor", { text = "󰏫 " })
          end
        end,
      })
    end,
  },

  -- WARNING: Function Deployment
  -- NOTE: Add nvim-ufo
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
  },

  -- NOTE: Add nvim-origami
  {
    "chrisgrieser/nvim-origami",
    event = "BufReadPost", -- later or on keypress would prevent saving folds
    opts = {}, -- needed even when using default config
  },

  --- NOTE: Telescope open intelligent
  {
    "danielfalk/smart-open.nvim",
    branch = "0.2.x",
    config = function()
      require("telescope").load_extension("smart_open")
    end,
    dependencies = {
      "kkharji/sqlite.lua",
      -- Only required if using match_algorithm fzf
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      -- Optional.  If installed, native fzy will be used when match_algorithm is fzy
      { "nvim-telescope/telescope-fzy-native.nvim" },
    },
  },

  -- NOTE: Codeium para Neovim
  {
    "Exafunction/codeium.vim",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<C-a>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-;>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },
}
