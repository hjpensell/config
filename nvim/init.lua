-- Neovim options.
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.swapfile = false
vim.g.mapleader = " "
vim.o.winborder = "rounded"

-- Neovim keymaps.
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>')
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p')

-- List of plugins.
vim.pack.add({
	{ src = 'https://github.com/navarasu/onedark.nvim' },
	{ src = 'https://github.com/stevearc/oil.nvim' },
	{ src = 'https://github.com/echasnovski/mini.pick' },
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = 'https://github.com/chomosuke/typst-preview.nvim' },
	{ src = 'https://github.com/saghen/blink.cmp' },
	{ src = 'https://github.com/nvim-tree/nvim-tree.lua' },
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons' },
	{ src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
	{ src = 'https://github.com/lervag/vimtex.git' },
	{ src = 'https://github.com/mason-org/mason.nvim' },
	{ src = 'https://github.com/L3MON4D3/LuaSnip' },
	{ src = 'https://github.com/windwp/nvim-autopairs' },
})

-- Plugin configs.
local ls = require("luasnip")
require "mini.pick".setup()
require "nvim-autopairs".setup()
require "mason".setup()
require "nvim-tree".setup()
require "oil".setup()
require("blink.cmp").setup({
	sources = {
		default = { "lsp", "path", "snippets", "buffer", },
	},
	snippets = { preset = 'luasnip' },
	keymap = {
			preset = "default",
			["<Tab>"] = { "snippet_forward", "fallback" },
			["<S-Tab>"] = { "snippet_backward", "fallback" },

	}


})
require("onedark").setup({
	style = 'warmer'
})
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_view_method = 'general'
vim.g.vimtex_view_general_viewer = '/mnt/c/Users/hjpen/AppData/Local/SumatraPDF/SumatraPDF.exe'
vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
vim.g.vimtex_view_general_options_latexmk = '-reuse-instance'
ls.config.set_config({
	history = true,
	updateevents = "TextChanged,TextChangedI",
	enable_autosnippets = true,
})
require("luasnip.loaders.from_lua").lazy_load()
require("luasnip.loaders.from_lua").load({
		paths = {vim.fn.stdpath("config") .. "/lua/luasnip"}
})
local npairs = require("nvim-autopairs")
local Rule = require("nvim-autopairs.rule")
npairs.add_rule(
		Rule("$", "$", "tex")
)

-- Plugin keymaps.
vim.lsp.enable({ "lua_ls", "texlab" })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
vim.keymap.set('n', '<leader>h', ':Pick help<CR>')
vim.keymap.set('n', '<leader>pv', ':NvimTreeFocus<CR>')

vim.cmd("colorscheme onedark")
