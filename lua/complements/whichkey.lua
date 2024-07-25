local wk = require("which-key")
wk.add({
  -- TODO: Add Translate Neovim
  -- NOTE: Use in Spanish
  { "<leader>t", group = "Translate", mode = "v", icon = "󰗊 " },
  { "<leader>ts", group = "Spanish", mode = "v", icon = "󰗊 " },
  { "<leader>tss", "<cmd>Translate es -output=split<cr>", desc = "Split", mode = "v" },
  { "<leader>tsr", "<cmd>Translate es -output=replace<cr>", desc = "Replace", mode = "v" },
  { "<leader>tsi", "<cmd>Translate es -output=insert<cr>", desc = "Insert", mode = "v" },
  { "<leader>tsa", "<cmd>Translate es -output=append<cr>", desc = "Append", mode = "v" },
  { "<leader>tsg", "<cmd>Translate es -output=register<cr>", desc = "Register", mode = "v" },
  { "<leader>tsf", "<cmd>Translate es -output=floating<cr>", desc = "Floating", mode = "v" },

  -- NOTE: Use in English.
  { "<leader>te", group = "English", mode = "v", icon = "󰗊 " },
  { "<leader>tes", "<cmd>Translate en -output=split<cr>", desc = "Translate Split", mode = "v" },
  { "<leader>ter", "<cmd>Translate en -output=replace<cr>", desc = "Replace", mode = "v" },
  { "<leader>tei", "<cmd>Translate en -output=insert<cr>", desc = "Insert", mode = "v" },
  { "<leader>tea", "<cmd>Translate en -output=append<cr>", desc = "Append", mode = "v" },
  { "<leader>teg", "<cmd>Translate en -output=register<cr>", desc = "Register", mode = "v" },
  { "<leader>tef", "<cmd>Translate en -output=floating<cr>", desc = "Floating", mode = "v" },

  -- NOTE: We added Ray although it is better manually.
  { "<leader>ct", "<cmd>'<,'> Ray<cr>", desc = "Snap Code", mode = "v" },
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
