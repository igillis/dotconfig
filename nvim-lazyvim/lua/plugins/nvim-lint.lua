return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      eruby = { "erb_lint" },
      ruby = { "standardrb" },
      -- markdown = { "markdownlint" },
      ["*"] = { "typos" }, -- Need to install typos-cli from Homebrew
    },
    linters = {
      standardrb = {
        ignore_exitcode = true,
      },
    },
  },
}
