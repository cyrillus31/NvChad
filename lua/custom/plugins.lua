local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python", "lua", "javascript"},
    opts = function()
      return require "custom.configs.null-ls" 
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "mypy",
        "ruff",
        "pyright",
        "black",
        "lua-language-server"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  }
}
return plugins
