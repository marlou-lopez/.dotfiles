require('lint').linters_by_ft = {
  javascript = {'eslint'},
  javascriptreact = {'eslint'},
  typescript = {'eslint'},
  typescriptreact = {'eslint'}
}

-- vim.api.nvim_buf_create_user_command(0, "Lint", function ()
--     require('lint').try_lint()
-- end, {})
-- vim.api.nvim_create_user_command("Lint", function ()
--     require('lint').try_lint()
-- end, {})
--
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function ()
    require('lint').try_lint()
  end
})

