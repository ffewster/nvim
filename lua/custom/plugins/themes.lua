return {
  {
    "sainnhe/everforest",
    priority = 1000,
    lazy = false,
    init = function()
      vim.cmd.colorscheme "everforest"
      -- You can configure highlights by doing something like:
      vim.cmd.hi "Comment gui=none"
      vim.cmd.hi "Normal guibg=none"
      -- vim.cmd.hi "Normal guibg=none"
    end,
  },

  -- KANGAWA THEME --
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
  --
  -- ROSE PINE THEME --
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
  --
  -- NORDIC THEME
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
  -- {
  --   "aliqyan-21/darkvoid.nvim",
  --   priority = 1000,
  --   lazy = false,
  --   init = function()
  --     require("darkvoid").setup {
  --       glow = true,
  --       transparent = true,
  --       colors = {
  --         fg = "#c0c0c0",
  --         bg = "#1c1c1c",
  --         cursor = "#fdd41b",
  --         line_nr = "#404040",
  --         visual = "#303030",
  --         comment = "#585858",
  --         string = "#66b2b2",
  --         func = "#1bfd9c",
  --         kw = "#fe5e58",
  --         identifier = "#b1b1b1",
  --         type = "#a1a1a1",
  --         search_highlight = "#fdd41b",
  --         operator = "#1bfd9c",
  --         bracket = "#e6e6e6",
  --         preprocessor = "#4b8902",
  --         bool = "#d1d1d1",
  --         constant = "#b2d8d8",
  --
  --         -- gitsigns colors
  --         added = "#baffc9",
  --         changed = "#ffffba",
  --         removed = "#ffb3ba",
  --
  --         -- Pmenu colors
  --         pmenu_bg = "#1c1c1c",
  --         pmenu_sel_bg = "#1bfd9c",
  --         pmenu_fg = "#c0c0c0",
  --
  --         -- EndOfBuffer color
  --         eob = "#3c3c3c",
  --
  --         -- Telescope specific colors
  --         border = "#fe5e58",
  --         title = "#ffffff",
  --
  --         -- bufferline specific colors
  --         bufferline_selection = "#1bfd9c",
  --
  --         -- LSP diagnostics colors
  --         error = "#dea6a0",
  --         warning = "#d6efd8",
  --         hint = "#bedc74",
  --         info = "#7fa1c3",
  --       },
  --     }
  --     -- You can configure highlights by doing something like:
  --     vim.cmd.hi "Comment gui=none"
  --     vim.cmd.hi "Normal guibg=none"
  --     vim.cmd.hi "Normal guibg=none"
  --     vim.cmd.colorscheme "darkvoid"
  --   end,
  -- },
}
