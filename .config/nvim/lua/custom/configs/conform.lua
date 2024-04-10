local M = {
  log_level = vim.log.levels.DEBUG,
  formatters_by_ft = {
    lua = { "stylua" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "eslint_d" } },
    javascriptreact = { { "eslint_d" } },
    typescript = { { "eslint_d" } },
    typescriptreact = { { "eslint_d" } },
    json = { { "jq" } },
    yaml = { { "yq" } },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
};

return M
