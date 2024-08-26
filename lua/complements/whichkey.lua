local wk = require("which-key")

wk.add({

  -- TODO: Add Translate Neovim
  --
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

  -- NOTE: We added Ray although it is better manually.
  { "<leader>ct", "<cmd>'<,'> Ray<cr>", desc = "Snap Code", mode = "v" },

  -- TODO:  Add tabs
  { "<leader><tab>p", "<cmd>BufferLinePick<cr>", desc = "Pick Tab" },
  { "<leader><tab>q", "<cmd>BufferLinePickClose<cr>", desc = "Pick Close Tab" },
  { "<leader><tab>k", "<cmd>BufferLineCycleNext<cr>", desc = "Next Tab" },
  { "<leader><tab>j", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous Tab" },
  { "<leader><tab>l", "<cmd>BufferLineMoveNext<cr>", desc = "Move Next Tab" },
  { "<leader><tab>h", "<cmd>BufferLineMovePrev<cr>", desc = "Move Prev Tab" },

  -- NOTE: Add Code Runner
  { "<leader>tU", "<cmd>RunCode<cr>", noremap = true, silent = false },
  { "<leader>tu", "<cmd>RunFile<cr>", noremap = true, silent = false },
  { "<leader>tv", "<cmd>RunFile tab<cr>", noremap = true, silent = false },
  { "<leader>tV", "<cmd>RunProject<cr>", noremap = true, silent = false },
  { "<leader>tw", "<cmd>RunClose<cr>", noremap = true, silent = false },
  { "<leader>tW", "<cmd>CRFiletype<cr>", noremap = true, silent = false },
  { "<leader>tx", "<cmd>CRProjects<cr>", noremap = true, silent = false },

  -- TODO: Add neogit
  { "<leader>gN", "<cmd>Neogit cwd=%:p:h<cr>", desc = "Neogit (cwd) " },
  { "<leader>gn", "<cmd>Neogit<cr>", desc = "Neogit (root dir) " },

  -- TODO: Add Maximize
  { "<leader>wz", "<cmd>WindowsMaximize<cr>", desc = "Maximize window" },
  { "<leader>wv", "<cmd>WindowsMaximizeVertically<cr>", desc = "Maximize window vertically" },
  { "<leader>wh", "<cmd>WindowsMaximizeHorizontally<cr>", desc = "maximize window horizontally" },
  { "<leader>we", "<cmd>WindowsEqualize<cr>", desc = "Equalize windows" },

  -- TODO: Add Organizate Windows
  { "<leader>wo", "<cmd>WinShift<cr>", desc = "Organizate window" },

  -- TODO: Add LiveServer
  { "<leader>cp", "<cmd>LiveServerStart<cr>", desc = "Liveserver start" },
  { "<leader>cQ", "<cmd>LiveServerStop<cr>", desc = "LiveServer Stop" },
  { "<leader>cq", "<cmd>LiveServerToggle<cr>", desc = "LiveServer Toggle" },

  -- TODO: Zen mode
  { "<leader>z", group = "Zen mode", mode = "n", icon = "󰽐" },
  { "<leader>zn", "<cmd>TZNarrow<cr>", desc = "Narrow zen", mode = "n" },
  { "<leader>zn", "<cmd>'<,'>TZNarrow<cr>", desc = "Narrow visual", mode = "v" },
  { "<leader>zf", "<cmd>TZFocus<cr>", desc = "Focus zen", mode = "n" },
  { "<leader>zm", "<cmd>TZMinimalist<cr>", desc = "Minimalist zen", mode = "n" },
  { "<leader>za", "<cmd>TZAtaraxis<cr>", desc = "State of Serenity", mode = "n" },
  { "<leader>zz", "<cmd>ZenMode<cr>", desc = "State of Zen", mode = "n" },

  -- TODO: refactor
  { "<leader>r", group = "refactor", mode = "n", icon = "󰳽" },

  -- TODO: Multicursors
  { "<leader>m", "<cmd>MCstart<cr>", desc = "Multicursors", mode = { "v", "n" }, icon = "󱄧" },
})

wk.add({
  -- NOTE: add ufo nvim.
  -- TODO: Zen mode
  { "<leader>y", group = "UFO deploys", mode = "n", icon = "👾" },
  {
    "<leader>yo",
    function()
      require("ufo").openAllFolds()
    end,
    desc = "Open Folds",
    mode = "n",
  },
  {
    "<leader>yc",
    function()
      require("ufo").closeAllFolds()
    end,
    desc = "Close Folds",
    mode = "n",
  },
  {
    "<leader>ye",
    function()
      require("ufo").openFoldsExceptKinds()
    end,
    desc = "Open Folds kinds",
    mode = "n",
  },
  {
    "<leader>yw",
    function()
      require("ufo").closeFoldsWith()
    end,
    desc = "Close Folds with",
    mode = "n",
  },
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
    desc = "Close Folds Under",
    mode = "n",
  },
})

wk.add({
  -- NOTE: Handling CSV files
  { "<leader>cb", group = "files CSV", mode = "n", icon = "" },
  {
    "<leader>cba",
    function()
      require("decisive").align_csv({})
    end,
    desc = " align CSV",
    mode = "n",
  },
  {
    "<leader>cbc",
    function()
      require("decisive").align_csv_clear({})
    end,
    desc = " clean CSV",
    mode = "n",
  },
  { "<leader>cbl", "<cmd>Csvlens<cr>", desc = " CSV lens", mode = "n" },
  {
    "<leader>cbn",
    function()
      require("decisive").align_csv_next_col()
    end,
    desc = " next CSV col",
    mode = "n",
  },
  {
    "<leader>cbp",
    function()
      require("decisive").align_csv_prev_col()
    end,
    desc = " prev CSV col",
    mode = "n",
  },
})
wk.add({
  -- TODO: Add File Browser
  { "<leader>fw", "<cmd>Telescope file_browser<cr>", desc = "File Browser" },
})
