-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  --- THEMES ---
  -- {
  --   "rebelot/kanagawa.nvim",
  --   priority = 1000,
  --   init = function(setup)
  --     -- You can configure highlights by doing something like:
  --     vim.cmd.hi "Comment gui=none"
  --     vim.cmd.hi "Normal guibg=none"
  --     vim.cmd.hi "Normal guibg=none"
  --     require("kanagawa").setup {
  --       theme = "dragon",
  --       compile = true,
  --       transparent = true,
  --     }
  --     vim.cmd.colorscheme "kanagawa-dragon"
  --   end,
  --   overrides = function(colors)
  --     local theme = colors.theme
  --     return {
  --       TelescopeTitle = { fg = theme.ui.special, bold = true },
  --       TelescopePromptNormal = { bg = theme.ui.bg_p1 },
  --       TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
  --       TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
  --       TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
  --       TelescopePreviewNormal = { bg = theme.ui.bg_dim },
  --       TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
  --     }
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
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   priority = 1000,
  --   lazy = false,
  --   init = function()
  --     vim.cmd.colorscheme "nordic"
  --     -- You can configure highlights by doing something like:
  --     -- vim.cmd.hi "Comment gui=none"
  --     -- vim.cmd.hi "Normal guibg=none"
  --     -- vim.cmd.hi "Normal guibg=none"
  --   end,
  -- },
  {
    "aliqyan-21/darkvoid.nvim",
    priority = 1000,
    lazy = false,
    init = function()
      require("darkvoid").setup {
        glow = true,
        transparent = true,
        colors = {
          fg = "#c0c0c0",
          bg = "#1c1c1c",
          cursor = "#fdd41b",
          line_nr = "#404040",
          visual = "#303030",
          comment = "#585858",
          string = "#66b2b2",
          func = "#1bfd9c",
          kw = "#fe5e58",
          identifier = "#b1b1b1",
          type = "#a1a1a1",
          search_highlight = "#fdd41b",
          operator = "#1bfd9c",
          bracket = "#e6e6e6",
          preprocessor = "#4b8902",
          bool = "#d1d1d1",
          constant = "#b2d8d8",

          -- gitsigns colors
          added = "#baffc9",
          changed = "#ffffba",
          removed = "#ffb3ba",

          -- Pmenu colors
          pmenu_bg = "#1c1c1c",
          pmenu_sel_bg = "#1bfd9c",
          pmenu_fg = "#c0c0c0",

          -- EndOfBuffer color
          eob = "#3c3c3c",

          -- Telescope specific colors
          border = "#fe5e58",
          title = "#ffffff",

          -- bufferline specific colors
          bufferline_selection = "#1bfd9c",

          -- LSP diagnostics colors
          error = "#dea6a0",
          warning = "#d6efd8",
          hint = "#bedc74",
          info = "#7fa1c3",
        },
      }
      -- You can configure highlights by doing something like:
      vim.cmd.hi "Comment gui=none"
      vim.cmd.hi "Normal guibg=none"
      vim.cmd.hi "Normal guibg=none"
      vim.cmd.colorscheme "darkvoid"
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

  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }
      vim.g.barbar_auto_setup = false
      map("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
      map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)
      map("n", "<leader>x", "<Cmd>BufferClose<CR>", opts)
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = "^1.0.0", -- optional: only update when a new 1.x version is released
  },

  -- See Commands section for default commands if you want to lazy load on them
}
