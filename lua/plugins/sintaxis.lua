return {

  -- NOTE: add nvim_context_vt
  {
    "andersevenrud/nvim_context_vt",
    depndencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim_context_vt").setup({})
    end,
  },

  -- NOTE: add nvim-navbuddy
  {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = { lsp = { auto_attach = true } },
  },

  -- NOTE: enable live server
  {
    "ngtuonghy/live-server-nvim",
    event = "VeryLazy",
    build = ":LiveServerInstall",
    config = function()
      require("live-server-nvim").setup({})
    end,
  },

  -- NOTE: Improve Treesitter highlighting
  {
    "m-demare/hlargs.nvim",
  },

  -- NOTE: add better escape for jk and jj
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- NOTE: smartcolumn for line of code
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "80",
      disabled_filetypes = {
        "NvimTree",
        "lazy",
        "mason",
        "help",
        "checkhealth",
        "lspinfo",
        "noice",
        "Trouble",
        "fish",
        "zsh",
        "help",
        "text",
        "markdown",
        "dashboard",
      },
      custom_colorcolumn = {},
      scope = "line",
    },
  },

  -- NOTE: add dropbar
  {
    "Bekaboo/dropbar.nvim",
    -- optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
  },

  -- NOTE: add comasemi
  {
    "saifulapm/commasemi.nvim",
    keys = {
      { "<Leader>e", desc = "Toggle comma" },
      { "<Leader>k", desc = "Toggle semicolon" },
    },
    opts = {
      leader = "<Leader>",
      keymaps = true,
      commands = true,
    },
  },

  -- WARNING: PLUGINS FOR CSV

  -- NOTE: add decisive
  {
    "emmanueltouzery/decisive.nvim",
  },

  -- NOTE: add csvlens
  {
    "theKnightsOfRohan/csvlens.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
    },
    config = true,
    opts = { --[[ Place your opts here ]]
    },
  },
  --

  -- WARNING: PLUGINS FOR JAVA

  -- NOTE: add maven for java
  {
    "eatgrass/maven.nvim",
    cmd = { "Maven", "MavenExec" },
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("maven").setup({
        executable = "./mvnw",
      })
    end,
  },

  -- WARNING: MULTICURSORS IN NEOVIM

  -- NOTE: multicursors
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvimtools/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "multicursors",
      },
    },
  },

  -- NOTE: View Text.
  {
    "wurli/visimatch.nvim",
    opts = {},
  },

  -- WARNING: PLUGINS FOR PHP

  -- NOTE: add php easy
  {
    "ta-tikoma/php.easy.nvim",
    dependencies = {
      "L3MON4D3/LuaSnip",
    },
    opts = {
      onAppend = {
        engine = "LuaSnip",
      },
    },
    keys = {
      { "-#", "<CMD>PHPEasyAttribute<CR>", desc = "Attribute", ft = "php" },
      { "-b", "<CMD>PHPEasyDocBlock<CR>", desc = "DocBlock", ft = "php" },
      { "-r", "<CMD>PHPEasyReplica<CR>", desc = "Replica", ft = "php" },
      { "-c", "<CMD>PHPEasyCopy<CR>", desc = "Copy", ft = "php" },
      { "-d", "<CMD>PHPEasyDelete<CR>", desc = "Delete", ft = "php" },
      { "-uu", "<CMD>PHPEasyRemoveUnusedUses<CR>", desc = "Remove Unused", ft = "php" },
      { "-e", "<CMD>PHPEasyExtends<CR>", desc = "Extends", ft = "php" },
      { "-i", "<CMD>PHPEasyImplements<CR>", desc = "Implements", ft = "php" },
      { "--i", "<CMD>PHPEasyInitInterface<CR>", desc = "Init Interface", ft = "php" },
      { "--c", "<CMD>PHPEasyInitClass<CR>", desc = "Init Class", ft = "php" },
      { "--ac", "<CMD>PHPEasyInitAbstractClass<CR>", desc = "Init Abstract Class", ft = "php" },
      { "--t", "<CMD>PHPEasyInitTrait<CR>", desc = "Init Trait", ft = "php" },
      { "--e", "<CMD>PHPEasyInitEnum<CR>", desc = "Init Enum", ft = "php" },
      { "-c", "<CMD>PHPEasyAppendConstant<CR>", desc = "Append Constant", ft = "php", mode = { "n", "v" } },
      { "-p", "<CMD>PHPEasyAppendProperty<CR>", desc = "Append Property", ft = "php", mode = { "n", "v" } },
      { "-m", "<CMD>PHPEasyAppendMethod<CR>", desc = "Append Method", ft = "php", mode = { "n", "v" } },
      { "__", "<CMD>PHPEasyAppendConstruct<CR>", desc = "Append Construct", ft = "php" },
      { "_i", "<CMD>PHPEasyAppendInvoke<CR>", desc = "Append Invoke", ft = "php" },
      { "-a", "<CMD>PHPEasyAppendArgument<CR>", desc = "Append Argument", ft = "php" },
    },
  },
}
