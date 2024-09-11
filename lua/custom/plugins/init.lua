-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  --- THEMES ---
  -- {
  --   "rebelot/kanagawa.nvim",
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme "kanagawa"
  --     -- You can configure highlights by doing something like:
  --     vim.cmd.hi "Comment gui=none"
  --     vim.cmd.hi "Normal guibg=none"
  --     vim.cmd.hi "Normal guibg=none"
  --   end,
  -- },
  -- {
  --   "rose-pine/neovim",
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme "rose-pine"
  --     -- You can configure highlights by doing something like:
  --     vim.cmd.hi "Comment gui=none"
  --     vim.cmd.hi "Normal guibg=none"
  --     vim.cmd.hi "Normal guibg=none"
  --   end,
  -- },
  {
    "AlexvZyl/nordic.nvim",
    priority = 1000,
    lazy = false,
    init = function()
      vim.cmd.colorscheme "nordic"
      -- You can configure highlights by doing something like:
      -- vim.cmd.hi "Comment gui=none"
      -- vim.cmd.hi "Normal guibg=none"
      -- vim.cmd.hi "Normal guibg=none"
    end,
  },

  --- GITHUB COPILOT ---
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<M-l>",
          },
        },
        panel = {
          enabled = true,
          auto_refresh = true,
        },
        filetypes = {
          ["*"] = true,
          typescript = true,
        },
      }
    end,
  },

  --- NVIM DEVCONTAINER ---
  {
    "https://codeberg.org/esensar/nvim-dev-container",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("devcontainer").setup {}
    end,
  },

  {
    "numToStr/Comment.nvim",
    config = function(_, opts)
      require("Comment").setup(opts)

      vim.keymap.set("n", "<leader>/", function()
        require("Comment.api").toggle.linewise.current()
      end, { desc = "comment toggle" })

      vim.keymap.set(
        "v",
        "<leader>/",
        "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
        { desc = "comment toggle" }
      )
    end,
  },
}
