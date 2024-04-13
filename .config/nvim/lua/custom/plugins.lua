local plugins = {
  {
    "iamcco/markdown-preview.nvim",
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
  {
    'stevearc/conform.nvim',
    event = "BufWritePre",
    opts = function ()
      return require("custom.configs.conform")
    end,
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
  },
  {
    "rcarriga/nvim-notify",
    lazy = false,
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = false,
  },
  -- lazy.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      }
  }
}

return plugins
