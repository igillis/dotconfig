return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format_notify = true,
      servers = {
        ruby_lsp = {},
        solargraph = {
          autostart = false,
          cmd = { os.getenv("HOME") .. "/.rbenv/shims/solargraph", "stdio" },
          settings = {
            solargraph = {
              autoformat = false,
              completion = true,
              diagnostic = false,
              folding = true,
              references = true,
              rename = true,
              symbols = true,
            },
          },
          root_dir = require("lspconfig").util.root_pattern("Gemfile", ".git", "."),
          -- on_attach = function(client)
          --   client.server_capabilities.documentRangeFormattingProvider = false
          --   client.server_capabilities.documentFormattingProvider = false
          -- end,
        },
      },
    },
  },
}
