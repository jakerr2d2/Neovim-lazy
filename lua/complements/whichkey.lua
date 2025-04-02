local wk = require("which-key")
local ic = " "
local ic2 = "󱨚 "

-- NOTE: Add Translate Neovim
wk.add({

  -- NOTE: Use in Spanish
  { "<leader>t", group = "Translate", mode = "v", icon = "󰗊 " },
  { "<leader>ts", group = "Spanish", mode = "v", icon = "󰗊 " },
  { "<leader>tss", "<cmd>Translate es -output=split<cr>", desc = " Split", mode = "v" },
  { "<leader>tsr", "<cmd>Translate es -output=replace<cr>", desc = " Replace", mode = "v" },
  { "<leader>tsi", "<cmd>Translate es -output=insert<cr>", desc = " Insert", mode = "v" },
  { "<leader>tsa", "<cmd>Translate es -output=append<cr>", desc = " Append", mode = "v" },
  { "<leader>tsg", "<cmd>Translate es -output=register<cr>", desc = " Register", mode = "v" },
  { "<leader>tsf", "<cmd>Translate es -output=floating<cr>", desc = " Floating", mode = "v" },

  -- NOTE: Use in English.
  { "<leader>te", group = "English", mode = "v", icon = "󰗊 " },
  { "<leader>tes", "<cmd>Translate en -output=split<cr>", desc = " Translate Split", mode = "v" },
  { "<leader>ter", "<cmd>Translate en -output=replace<cr>", desc = " Replace", mode = "v" },
  { "<leader>tei", "<cmd>Translate en -output=insert<cr>", desc = " Insert", mode = "v" },
  { "<leader>tea", "<cmd>Translate en -output=append<cr>", desc = " Append", mode = "v" },
  { "<leader>teg", "<cmd>Translate en -output=register<cr>", desc = " Register", mode = "v" },
  { "<leader>tef", "<cmd>Translate en -output=floating<cr>", desc = " Floating", mode = "v" },
})

-- NOTE: IA code
wk.add({
  -- TODO: Codecompanion
  --[[
  { "<leader>i", group = "ia", mode = { "n", "v" }, icon = "󱚢 " },
  { "<leader>ia", "<cmd>CodeCompanion<cr>", desc = " Open Assistant", mode = "n", icon = ic },
  { "<leader>ib", "<cmd>CodeCompanionChat Add<cr>", desc = " Add Chat", mode = "v", icon = ic },
  { "<leader>ic", "<cmd>CodeCompanionChat<cr>", desc = " Open Chat ", mode = "n", icon = "󰭻 " },
  { "<leader>il", "<cmd>CodeCompanionCmd<cr>", desc = " Generate Command-line", mode = "n", icon = " " },
  { "<leader>id", "<cmd>CodeCompanionActions", desc = " Open Actions", mode = "n", icon = " " },
  { "<leader>id", "<cmd>CodeCompanionActions", desc = " Open Action", mode = "v", icon = " " },
  { "<leader>it", "<cmd>CodeCompanionChat Toggle<cr>", desc = " Toggle Assistant", mode = "n", icon = "󰨙 " },
  { "<leader>it", "<cmd>CodeCompanionChat Toggle<cr>", desc = " Toggle Assistant", mode = "v", icon = "󰨙 " },
  ]]

  -- TODO: Avante
  { "<leader>j", group = "ia", mode = "n", icon = "󰭆 " },
  { "<leader>ja", "<cmd>AvanteAsk<cr>", desc = " Avante - Ask", mode = "n", icon = "󰺴 " },
  { "<leader>jb", "<cmd>AvanteBuild<cr>", desc = " Avante - Build", mode = "n", icon = "󰈠 " },
  { "<leader>jc", "<cmd>AvanteChat<cr>", desc = " Avante - Chat", mode = "n", icon = "󰭻 " },
  { "<leader>jm", "<cmd>AvanteShowRepoMap<cr>", desc = " Avante - Repo Map", mode = "n", icon = "󰨁 " },
  { "<leader>je", "<cmd>AvanteEdit<cr>", desc = " Avante - Edit", mode = "n", icon = " " },
  { "<leader>jf", "<cmd>AvanteFocus<cr>", desc = " Avante - Focus", mode = "n", icon = "󰋲 " },
  { "<leader>jr", "<cmd>AvanteRefresh<cr>", desc = " Avante - Refresh", mode = "n", icon = " " },
  { "<leader>jt", "<cmd>AvanteToggle<cr>", desc = " Avante - Toggle", mode = "n", icon = "󰨙 " },
})

-- NOTE: Buffers and Tabs
wk.add({
  -- TODO: Cybuffer
  --{ "<leader>j", "<cmd>CybuNext<cr>", desc = "Next Focus", mode = "n" },
  --{ "<leader>K", "<cmd>CybuLastusedPrev<cr>", desc = "Prev Focus", mode = "n" },

  -- TODO:  Add tabs
  { "<leader><tab>p", "<cmd>BufferLinePick<cr>", desc = "Pick Tab" },
  { "<leader><tab>q", "<cmd>BufferLinePickClose<cr>", desc = "Pick Close Tab" },
  { "<leader><tab>k", "<cmd>BufferLineCycleNext<cr>", desc = "Next Tab" },
  { "<leader><tab>j", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous Tab" },
  { "<leader><tab>l", "<cmd>BufferLineMoveNext<cr>", desc = "Move Next Tab" },
  { "<leader><tab>h", "<cmd>BufferLineMovePrev<cr>", desc = "Move Prev Tab" },
  { "<leader><tab>o", "<cmd>BufferLineCloseOthers<cr>", desc = "Close Other Tabs" },
})

-- NOTE: Add Code Runner
wk.add({
  -- NOTE: Add Code Runner
  { "<leader>tU", "<cmd>RunCode<cr>", noremap = true, silent = false },
  { "<leader>tu", "<cmd>RunFile<cr>", noremap = true, silent = false },
  { "<leader>tv", "<cmd>RunFile tab<cr>", noremap = true, silent = false },
  { "<leader>tV", "<cmd>RunProject<cr>", noremap = true, silent = false },
  { "<leader>tw", "<cmd>RunClose<cr>", noremap = true, silent = false },
  { "<leader>tW", "<cmd>CRFiletype<cr>", noremap = true, silent = false },
  { "<leader>tx", "<cmd>CRProjects<cr>", noremap = true, silent = false },
})

-- NOTE: GIT
wk.add({
  -- TODO: Add neogit
  { "<leader>gN", "<cmd>Neogit cwd=%:p:h<cr>", desc = "Neogit (cwd) " },
  { "<leader>gn", "<cmd>Neogit<cr>", desc = "Neogit (root dir) " },
})

-- NOTE: Windows
wk.add({
  -- TODO: Add Maximize
  { "<leader>wz", "<cmd>WindowsMaximize<cr>", desc = "Maximize window" },
  { "<leader>wv", "<cmd>WindowsMaximizeVertically<cr>", desc = "Maximize window vertically" },
  { "<leader>wh", "<cmd>WindowsMaximizeHorizontally<cr>", desc = "maximize window horizontally" },
  { "<leader>we", "<cmd>WindowsEqualize<cr>", desc = "Equalize windows" },

  -- TODO: Add Organizate Windows
  { "<leader>wo", "<cmd>WinShift<cr>", desc = "Organizate window" },
})

-- NOTE: LiveServer
wk.add({

  -- TODO: Add LiveServer
  { "<leader>cp", "<cmd>LiveServerStart<cr>", desc = "Liveserver start" },
  { "<leader>cQ", "<cmd>LiveServerStop<cr>", desc = "LiveServer Stop" },
  { "<leader>cq", "<cmd>LiveServerToggle<cr>", desc = "LiveServer Toggle" },
})

-- NOTE: Extra features
wk.add({

  -- TODO: We added Ray although it is better manually.
  { "<leader>ct", "<cmd>'<,'>Ray<cr>", desc = "Ray snap", mode = "v" },

  -- TODO: Add Navbuddy
  { "<leader>cN", "<cmd>Navbuddy<cr>", desc = "Navegar en el codigo" },

  -- TODO: refactor
  { "<leader>r", group = "refactor", mode = "n", icon = "󰳽" },

  -- TODO: Multicursors
  { "<leader>m", "<cmd>MCstart<cr>", desc = "Multicursors", mode = { "v", "n" }, icon = "󱄧" },
})

-- TODO: Zen mode
wk.add({
  { "<leader>z", group = "Zen mode", mode = "n", icon = "󰽐" },
  { "<leader>zn", "<cmd>TZNarrow<cr>", desc = "Narrow zen", mode = "n" },
  { "<leader>zn", "<cmd>'<,'>TZNarrow<cr>", desc = "Narrow visual", mode = "v" },
  { "<leader>zf", "<cmd>TZFocus<cr>", desc = "Focus zen", mode = "n" },
  { "<leader>zm", "<cmd>TZMinimalist<cr>", desc = "Minimalist zen", mode = "n" },
  { "<leader>za", "<cmd>TZAtaraxis<cr>", desc = "State of Serenity", mode = "n" },
  { "<leader>zz", "<cmd>ZenMode<cr>", desc = "State of Zen", mode = "n" },
})

-- NOTE: Add UFO nvim.
wk.add({
  { "<leader>y", group = "UFO deploys", mode = "n", icon = "👾" },

  -- TODO: Open folds
  {
    "<leader>yo",
    function()
      require("ufo").openAllFolds()
    end,
    desc = "Open Folds",
    mode = "n",
  },

  -- TODO: Close folds
  {
    "<leader>yc",
    function()
      require("ufo").closeAllFolds()
    end,
    desc = "Close Folds",
    mode = "n",
  },

  -- TODO: Open Folds kinds
  {
    "<leader>ye",
    function()
      require("ufo").openFoldsExceptKinds()
    end,
    desc = "Open Folds kinds",
    mode = "n",
  },

  -- TODO: Close Folds with
  {
    "<leader>yw",
    function()
      require("ufo").closeFoldsWith()
    end,
    desc = "Close Folds with",
    mode = "n",
  },

  -- TODO: See preview
  {
    "<leader>yk",
    function()
      local winid = require("ufo").peekFoldedLinesUnderCursor()
      if not winid then
        -- choose one of coc.nvim and nvim lsp
        vim.fn.CocActionAsync("definitionHover") -- coc.nvim
        vim.lsp.buf.hover()
      end
    end,
    desc = "See preview",
    mode = "n",
  },
})

-- NOTE: CSV files
wk.add({
  -- TODO: Handling CSV files
  { "<leader>cb", group = "files CSV", mode = "n", icon = "" },

  -- TODO: Align CSV files
  {
    "<leader>cba",
    function()
      require("decisive").align_csv({})
    end,
    desc = " align CSV",
    mode = "n",
  },

  -- TODO: Clear align CSV files
  {
    "<leader>cbc",
    function()
      require("decisive").align_csv_clear({})
    end,
    desc = " clean CSV",
    mode = "n",
  },

  -- TODO: CSV lens
  { "<leader>cbl", "<cmd>Csvlens<cr>", desc = " CSV lens", mode = "n" },

  -- TODO: Align next column CSV files
  {
    "<leader>cbn",
    function()
      require("decisive").align_csv_next_col()
    end,
    desc = " next CSV col",
    mode = "n",
  },

  -- TODO: Align prev column CSV files
  {
    "<leader>cbp",
    function()
      require("decisive").align_csv_prev_col()
    end,
    desc = " prev CSV col",
    mode = "n",
  },
})

-- NOTE: Ranger files
wk.add({

  -- TODO: Ranger files
  {
    "<leader>fa",
    function()
      require("ranger-nvim").open(true)
    end,
    desc = "Ranger Files",
    mode = "n",
  },
})

-- NOTE: Add File Browser and Smart Open
wk.add({
  -- TODO: Add File Browser
  { "<leader>fw", "<cmd>Telescope file_browser<cr>", desc = "File Browser" },
  -- TODO: Add File Browser
  { "<leader>fo", "<cmd>Telescope smart_open<cr>", desc = "Smart Open" },
})
