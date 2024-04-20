return {
  {
    "stevearc/conform.nvim",
    event = "BufReadPre",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
    opts = {
      inlay_hints = { enabled = true },
    },
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
        "python-lsp-server",
        "black",
        "flake8",
        "pydocstyle",
        "mypy",
        "ruff",
        "ruff-lsp",
        "rust-analyzer",
        "dockerfile-language-server",
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "markdown", "markdown_inline",
        "python",
        "rust",
  		},
  	},
  },
}
