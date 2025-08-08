-- WARNING: PLUGINS FOR PHP
return {
  -- NOTE: Add php easy
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
