local g = vim.g

-- Map <Space> as Leader
g.mapleader = " "
g.maplocalleader = " "

-- I keep my key mappings, settings, and lazy config in separate .lua files
require("config.keymaps")
require("config.options")
require("config.lazy")

vim.opt.spelllang = {
	"de",
	"en",
	"fr",
	"pl",
}
vim.opt.spell = true

local add_autocommands = require("utils").add_autocommands

local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = augroup,
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Autocommands
local autocommands = {
	ts_remove = {
		pattern = require("vim.filetype").js,
		triggers = { "FileType" },
		callback = function()
			-- Remove unused variables
			vim.api.nvim_create_user_command("TSRemoveUnused", function()
				vim.lsp.buf.code_action({
					apply = true,
					context = {
						only = { "source.removeUnused.ts" },
						diagnostics = {},
					},
				})
			end, {})

			-- Add missing imports
			vim.api.nvim_create_user_command("TSAddImports", function()
				vim.lsp.buf.code_action({
					apply = true,
					context = {
						only = { "source.addMissingImports.ts" },
						diagnostics = {},
					},
				})
			end, {})

			-- Automatically organise imports
			vim.api.nvim_create_user_command("TSOrganiseImports", function()
				vim.lsp.buf.code_action({
					apply = true,
					context = {
						only = { "source.organizeImports.ts" },
						diagnostics = {},
					},
				})
			end, {})
		end,
	},
}

add_autocommands(autocommands)
