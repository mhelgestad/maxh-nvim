return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources, {
        null_ls.builtins.formatting.gofmt, -- Go formatter
        null_ls.builtins.formatting.goimports, -- Import organizer
        null_ls.builtins.diagnostics.golangci_lint, -- Linter
      })
    end,
  },
}
