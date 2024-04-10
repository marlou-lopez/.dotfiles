local plugins = {
  {
    "iamcco/markdown-preview.nvim",
    -- lazy = false,
    event = "BufRead",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "folke/zen-mode.nvim",
    event = "BufRead",
    opts = {}
  },
  {
    "ThePrimeagen/harpoon"
  },
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    config = function()
      require("custom.configs.dadbod").setup()
    end,
    cmd = {
      "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer",
    },
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup()
    end,
  },
  -- {
  --   "mhartington/formatter.nvim",
  --   event = "VeryLazy",
  --   opts = function ()
  --     return require("custom.configs.formatter")
  --   end
  -- },
  {
    'stevearc/conform.nvim',
    event = "BufWritePre",
    opts = function ()
      return require("custom.configs.conform")
    end,
    -- config = function ()
    --   require("conform.formatters.eslint_d").cwd = require("conform.util").root_file({
    --     ".eslint.js",
    --     ".eslint.cjs",
    --     ".eslint.yaml",
    --     ".eslint.yml",
    --     ".eslint.json",
    --   })
    --   require("conform.formatters.eslint_d").require_cwd = true
    -- end
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require("custom.configs.lint")
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "eslint_d",
        "eslint-lsp",
        "prettier",
        "typescript-language-server",
        "js-debug-adapter",
        "tailwindcss-language-server",
        "json-lsp",
        "css-lsp",
        "html-lsp",
        "yq",
        "jq",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {
      default_file_explorer = false
    },
    dependencies = { "nvim-tree/nvim-web-devicons" }
  }
}

return plugins
