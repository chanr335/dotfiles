return {
	-- "vague2k/vague.nvim",
	"cdmill/neomodern.nvim",
	-- "rebelot/kanagawa.nvim",
	lazy = false,
	commit = "415009ee6b7652cbd5d5eff4d9cb344f03d4d85f",
	priority = 1000,
	config = function()
		local transparent = true
		require("neomodern").setup({
			style = "roseprime",
			transparent = transparent,
		})
		-- require("neomodern").load()
		-- require("kanagawa").setup({
		-- 	compile = false, -- enable compiling the colorscheme
		-- 	undercurl = true, -- enable undercurls
		-- 	commentStyle = { italic = true },
		-- 	functionStyle = {},
		-- 	keywordStyle = { italic = true },
		-- 	statementStyle = { bold = true },
		-- 	typeStyle = {},
		-- 	transparent = false, -- do not set background color
		-- 	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
		-- 	terminalColors = true, -- define vim.g.terminal_color_{0,17}
		-- 	colors = { -- add/modify theme and palette colors
		-- 		palette = {},
		-- 		theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
		-- 	},
		-- 	overrides = function(colors) -- add/modify highlights
		-- 		return {}
		-- 	end,
		-- 	theme = "wave", -- Load "wave" theme when 'background' option is not set
		-- 	background = { -- map the value of 'background' option to a theme
		-- 		dark = "wave", -- try "dragon" !
		-- 		light = "lotus",
		-- },
		-- })
		require("neomodern").load()
		-- setup must be called before loading
		-- vim.cmd.colorscheme("neomodern")
	end,
}
