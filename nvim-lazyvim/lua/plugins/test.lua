return {
  -- {
  --   "neotest-minitest",
  --   name = "neotest-minitest",
  --   dev = { true },
  -- },
  { "zidhuss/neotest-minitest" },
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-minitest",
        "neotest-plenary",
      },
      -- log_level = 1,
    },
  },
}
