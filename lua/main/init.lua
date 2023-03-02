-----------------------------------------------------
-- ███╗  ██╗███████╗ █████╗ ██╗   ██╗██╗███╗   ███╗--
-- ████╗ ██║██╔════╝██╔══██╗██║   ██║██║████╗ ████║--
-- ██╔██╗██║█████╗  ██║  ██║╚██╗ ██╔╝██║██╔████╔██║--
-- ██║╚████║██╔══╝  ██║  ██║ ╚████╔╝ ██║██║╚██╔╝██║--
-- ██║ ╚███║███████╗╚█████╔╝  ╚██╔╝  ██║██║ ╚═╝ ██║--
-- ╚═╝  ╚══╝╚══════╝ ╚════╝    ╚═╝   ╚═╝╚═╝     ╚═╝--
-----------------------------------------------------

require("main.keybindings")
require("main.packer")
require("main.colors")

local g = vim.g
local o = vim.o
local opt = vim.opt

g.mapleader = " "
-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200


-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

--Search settings
opt.hlsearch = false
opt.incsearch = true

-- Better editor UI
o.number = true
o.numberwidth = 2
o.relativenumber = true
opt.wrap = false
--o.signcolumn = "yes"
-- Indenting
o.expandtab = true
--o.smarttab = true
--o.cindent = true
--o.list = true

-- Superior editor experience
o.autoindent = true
--o.wrap = true
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = -1 -- If negative, shiftwidth value is used

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

vim.g.indentLine_enabled = false

-- Personal options
--vim.cmd([[autocmd Filetype tex set spellang=pt | set spell]])
vim.cmd([[autocmd BufNewFile,BufRead */Notas/* set filetype=rmd]])
vim.cmd([[autocmd BufNewFile,BufRead notas set filetype=rmd]])
--vim.cmd([[autocmd BufNewFile,BufRead * :IndentLinesEnable]])

vim.g.indentLine_char_list = { '|', '¦', '┆', '┊' }

--Cursor Line
o.cursorline = false

opt.mouse = "a"
