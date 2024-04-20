local options = {
  formatters_by_ft = {
    python = { "isort", "black" },
    rust = { "rustfmt" },
    lua = { "stylua" },
    r = { "styler" },
    bash = { "beautysh" },
  },
}

require("conform").setup(options)
