return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      htmlbeautifier = {
        prepend_args = { "-b", "1" },
      },
      erb_lint = {
        stdin = false,
        tmpfile_format = ".conform.$RANDOM.$FILENAME",
        command = "bundle",
        args = { "exec", "erblint", "--autocorrect", "$FILENAME" },
      },
    },
    formatters_by_ft = {
      html = { "htmlbeautifier" },
      eruby = { "htmlbeautifier", "erb_lint" },
      ruby = { "standardrb" },
      markdown = { "markdownlint" },
      yaml = { "yamlfix" },
      javascript = { "prettierd", "prettier" },
      typescript = { "prettierd", "prettier" },
      json = { "jq" },
    },
  },
}
