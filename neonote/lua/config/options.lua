local o = vim.opt -- for conciseness

-- Basics
o.number = true -- Line numbers
o.relativenumber = true -- Relative line numbers
o.linebreak = true -- Wrap long lines with full words
o.scrolloff = 10 -- Keep 10 lines above/below cursor
o.splitright = true -- Split new buffers to the right
o.splitbelow = true -- Split new buffers below
o.spell = true -- Enable spellchecking
o.spelllang = { "en", "de", "pl", "fr" } -- Spell check for English, German, Polish and French

-- Indentation
o.tabstop = 2 -- 1 tab = 2 spaces
o.shiftwidth = 2 -- Indentation width
o.expandtab = true -- Use spaces instead of tabs
o.autoindent = true -- Copy indent from current line
o.smartindent = true -- Smart auto-indenting

-- Search
o.ignorecase = true -- Case insensitive search
o.smartcase = true -- Case sensitive search when using capital characters
o.hlsearch = false -- Don't highlight search results
o.incsearch = true -- Show matches as you type

-- Cursor
o.cursorline = true

-- Visual
o.termguicolors = true -- Enable highlight groups
o.signcolumn = "yes" -- Always display the sign column (where errors are displayed)
o.showcmd = false -- Hide partial commands in status bar
o.winborder = "rounded" -- Windows, like hover or completion, have 1px solid rounded border

vim.cmd("highlight clear SignColumn") -- Remove highlighting of sign column

-- Backups
o.swapfile = false
o.undofile = true -- Persists undos after buffers are unloaded

-- backspace
o.backspace = "indent,eol,start"

-- clipboard
o.clipboard = "unnamedplus"
