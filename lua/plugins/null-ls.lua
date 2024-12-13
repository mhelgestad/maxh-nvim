return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = opts.sources or {}
      vim.list_extend(opts.sources, {
        null_ls.builtins.formatting.gofmt, -- Go formatter
        -- null_ls.builtins.formatting.goimports, -- Import organizer
        null_ls.builtins.diagnostics.golangci_lint, -- Linter

        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.code_actions.refactoring,
      })
    end,
  },
}
