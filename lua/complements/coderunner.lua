require("code_runner").setup({
  -- choose default mode (valid term, tab, float, toggle)
  mode = "float",
  -- Focus on runner window(only works on toggle, term and tab mode)
  focus = true,
  -- startinsert (see ':h inserting-ex')
  startinsert = true,
  insert_prefix = "",
  term = {
    --  Position to open the terminal, this option is ignored if mode ~= term
    position = "bot",
    -- window size, this option is ignored if mode == tab
    size = 12,
  },
  float = {
    close_key = "<ESC>",
    -- Window border (see ':h nvim_open_win')
    border = "rounded",

    hot_reload = true,
    focus = true,

    -- Num from `0 - 1` for measurements
    height = 0.8,
    width = 0.8,
    x = 0.5,
    y = 0.5,

    -- Highlight group for floating window/border (see ':h winhl')
    border_hl = "FloatBorder",
    float_hl = "Normal",

    -- Transparency (see ':h winblend')
    blend = 15,
  },
  better_term = { -- Toggle mode replacement
    clean = false, -- Clean terminal before launch
    number = 10, -- Use nil for dynamic number and set init
    init = nil,
  },
})
