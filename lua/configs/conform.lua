local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
    dart = { "dart_format" },
  },

  format_after_save = {
    lsp_fallback = "always",
  }
}

require("conform").setup(options)
