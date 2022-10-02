local Remap = require("modules/util")
local nnoremap = Remap.nnoremap

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local opts = { silent=true }
nnoremap("<leader>e", vim.diagnostic.open_float, opts)
nnoremap("[d", vim.diagnostic.goto_prev, opts)
nnoremap("]d", vim.diagnostic.goto_next, opts)

local on_attach = function(client, bufnr)
  if client.name == "tsserver" then
    client.resolved_capabilities.document_formatting = false
  end

  local bufopts = { silent=true, buffer=bufnr } 
  nnoremap("gd", "<cmd>Telescope lsp_definitions<cr>", bufopts) 
  nnoremap("gi", "<cmd>Telescope lsp_implementations<cr>", bufopts) 
  nnoremap("gr", "<cmd>Telescope lsp_references<cr>", bufopts) 
  nnoremap("ld", "<cmd>Telescope diagnostics<cr>", bufopts) 
  nnoremap("K", vim.lsp.buf.hover, bufopts)
  nnoremap("<leader>F", vim.lsp.buf.formatting_sync, bufopts)

  nnoremap("<leader>rn", vim.lsp.buf.rename, bufopts)
  nnoremap("<leader>ca", vim.lsp.buf.code_action, bufopts)

end

require'lspconfig'.tsserver.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

require'lspconfig'.eslint.setup{}
require'lspconfig'.tailwindcss.setup{}

require'lspconfig'.html.setup{
  capabilities = capabilities
}

require'lspconfig'.cssls.setup{
  capabilities = capabilities
}

require'lspconfig'.jsonls.setup{
  capabilities = capabilities
}
