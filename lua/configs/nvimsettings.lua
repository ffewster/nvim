local opt = vim.opt
local g = vim.g

-------------------------------------- Globals ------------------------------------------


-------------------------------------- Options ------------------------------------------
-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.wrap = true
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"
opt.fillchars = { eob = " " }

-- Numbers
opt.ruler = true
opt.numberwidth = 3
opt.relativenumber = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.colorcolumn = "80"

-- Go to previous/next line with h,l,left/right arrow when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"
