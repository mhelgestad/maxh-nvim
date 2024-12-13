return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "pyright", "gopls" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "strict",
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
                shadow = true,
              },
            },
          },
        },
      },
    },
  },
}
