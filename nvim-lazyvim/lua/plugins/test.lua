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
    dependencies = {
      "zidhuss/neotest-minitest",
    },
    opts = {
      adapters = {
        ["neotest-minitest"] = {
          test_cmd = function()
            vim.env.RUBY_DEBUG_OPEN = "true"
            vim.env.RUBY_DEBUG_LAZY = "true"
            vim.env.RUBY_DEBUG_HOST = "127.0.0.1"
            vim.env.RUBY_DEBUG_PORT = "38698"
            return vim
              .iter({
                "bundle",
                "exec",
                "ruby",
                "-Itest",
              })
              :flatten()
              :totable()
          end,
        },
        ["neotest-plenary"] = {},
      },
      -- log_level = 1,
    },
  },
}
