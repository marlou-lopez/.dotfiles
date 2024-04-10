local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger"
    }
  }
}

M.harpoon = {
  n = {
    ["<leader>m"] = {
      function ()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "Show Harpoon Marks"
    },
    ["<leader>ma"] = {
      function ()
        require("harpoon.mark").add_file()
      end,
      "Add file to Harpoon"
    },
    ["<leader>1"] = {
      function ()
        require("harpoon.ui").nav_file(1)
      end,
      "Navigate to Harpoon Mark 1"
    },
    ["<leader>2"] = {
      function ()
        require("harpoon.ui").nav_file(2)
      end,
      "Navigate to Harpoon Mark 2"
    },
    ["<leader>3"] = {
      function ()
        require("harpoon.ui").nav_file(3)
      end,
      "Navigate to Harpoon Mark 3"
    },
    ["<leader>4"] = {
      function ()
        require("harpoon.ui").nav_file(4)
      end,
      "Navigate to Harpoon Mark 4"
    },
  }
}

M.tmux_navigator = {
  n = {
    ["<C-l>"] = {"<cmd> TmuxNavigateRight <CR>", "Navigate to right tmux pane"},
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft <CR>", "Navigate to left tmux pane"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown <CR>", "Navigate to down tmux pane"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp <CR>", "Navigate to up tmux pane"},
  }
}

M.rest = {
  n = {
    ["<leader>rr"] = {"<cmd>Rest run<cr>", "Run request under the cursor"},
    ["<leader>rl"] = {"<cmd>Rest run last<cr>", "Re run latest request"},
    ["<leader>rt"] = {
      function ()
        require("telescope").extensions.rest.select_env()
      end,
      "Load rest env variables"
    },
  }
}

-- M.oil = {
--   n = {
--     ["-"] = {"<cmd>Oil"}
--   }
-- }

return M
