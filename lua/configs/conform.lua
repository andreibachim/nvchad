local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
    dart = { "dart_format" },
  },

  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  }
}

require("conform").setup(options)
