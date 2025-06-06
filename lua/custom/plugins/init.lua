-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
return vim.tbl_deep_extend(
  "force",
  {},
  require "custom.plugins.comment",
  require "custom.plugins.copilot",
  require "custom.plugins.devcontainer",
  require "custom.plugins.tabs",
  require "custom.plugins.themes",
  require "custom.plugins.treesitter"
)
