require("null-ls").setup({
  sources = {
    require("null-ls").builtins.diagnostics.eslint,
    require("null-ls").builtins.formatting.prettier
  }
})
