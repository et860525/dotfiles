local opt = vim.opt

-- General --
opt.title = true
opt.mouse = 'a'                       -- Enable mouse support
opt.clipboard = 'unnamedplus'         -- Copy/paste to system clipboard
opt.backup = false
opt.writebackup = false
opt.inccommand = 'split'
opt.wrap = false

-- UI --
opt.number = true           -- Show line number
opt.showcmd = true          -- Show command line 
opt.showmatch = true        -- Highlight matching parenthesis
opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.linebreak = true        -- Wrap on word boundary
opt.laststatus = 3          -- Set global statusline
opt.cursorline = true
opt.termguicolors = true
opt.wildoptions = 'pum'
opt.pumblend = 5

-- Tabs, indent --
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 2          -- Shift 2 spaces when tab
opt.tabstop = 2             -- 1 tab == 2 spaces
opt.smartindent = true      -- Autoindent new lines

-- Undercurl --
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
