return {
  "rafamadriz/friendly-snippets",
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
    -- Framework snippets from friendly snippets library
    require("luasnip").filetype_extend("ruby", { "rails" })
    -- Custom snippets
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snips" } })
  end,
}
