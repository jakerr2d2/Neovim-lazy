require("code_runner").setup({
  -- NOTE: choose default mode (valid term, tab, float, toggle)
  mode = "float",
  -- NOTE: Focus on runner window(only works on toggle, term and tab mode)
  focus = true,
  -- NOTE: startinsert (see ':h inserting-ex')
  startinsert = true,
  insert_prefix = "",
  term = {
    --  NOTE: Position to open the terminal, this option is ignored if mode ~= term
    position = "bot",
    -- NOTE: window size, this option is ignored if mode == tab
    size = 12,
  },
  float = {
    close_key = "<ESC>",
    -- NOTE:Window border (see ':h nvim_open_win')
    border = "rounded",

    hot_reload = true,
    focus = true,

    -- NOTE: Num from `0 - 1` for measurements
    height = 0.8,
    width = 0.8,
    x = 0.5,
    y = 0.5,

    -- NOTE: Highlight group for floating window/border (see ':h winhl')
    border_hl = "FloatBorder",
    float_hl = "Normal",

    -- NOTE: Transparency (see ':h winblend')
    blend = 15,
  },
  better_term = { -- NOTE: Toggle mode replacement
    clean = false, -- NOTE: Clean terminal before launch
    number = 10, -- NOTE: Use nil for dynamic number and set init
    init = nil,
  },
  filetype = {
    python = "python3 $filePath",
    cpp = "g++ % -o %< && ./%<",
    c = "gcc % -o %< && ./%<",
    go = "go run %",
    rust = "cargo run",
    php = {
      "cd $dir &&",
      "php $fileName",
    },
  },
})

-- NOTE:  Función personalizada para apps interactivas
local function run_interactive_java()
  local Terminal = require("toggleterm.terminal").Terminal
  local java_term = Terminal:new({
    cmd = "mvn compile exec:java",
    direction = "horizontal",
    size = 15,
    close_on_exit = false,
    on_open = function(term)
      vim.cmd("startinsert!")
      -- Permitir salir del modo insertar con Esc
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
    end,
  })
  java_term:toggle()
end

--vim.keymap.set("n", "<leader>Tj", run_interactive_java, { desc = "Run Interactive Java" })
