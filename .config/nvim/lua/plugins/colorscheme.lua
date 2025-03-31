return {
	{
		-- "rebelot/kanagawa.nvim",
        "savq/melange-nvim",
		lazy = false, -- Make sure it loads immediately (not on demand)
		priority = 1000, -- Ensure this plugin (and thus colorscheme) loads first
		config = function()
		-- 	-- kanagawa configs 
		-- 	require('kanagawa').setup({
		-- 		compile = false, -- enable compiling the colorscheme
		-- 		undercurl = true, -- enable undercurls
		-- 		commentStyle = { italic = true },
		-- 		functionStyle = {},
		-- 		keywordStyle = { italic = true },
		-- 		statementStyle = { bold = true },
		-- 		typeStyle = {},
		-- 		transparent = false, -- do not set background color
		-- 		dimInactive = false, -- dim inactive window `:h hl-NormalNC`
		-- 		terminalColors = true, -- define vim.g.terminal_color_{0,17}
		-- 		colors = { -- add/modify theme and palette colors
		-- 			palette = {},
		-- 			theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
		-- 		},
		-- 		overrides = function(colors) -- add/modify highlights
		-- 			return {
		-- 				LineNr = { bg = colors.theme.ui.bg, fg = colors.theme.ui.dim },
		-- 				CursorLineNr = { bg = colors.theme.ui.bg, fg = colors.theme.syn.accent, },
		-- 			}
		-- 		end,
		-- 		theme = "wave",
		-- 		background = {
		-- 			dark = "wave",
		-- 			light = "lotus"
		-- 		},
		-- 	})
		--
			vim.cmd("colorscheme melange")
            vim.api.nvim_set_hl(0, "Normal", { bg = "#181616" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "#181616" })
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#181616" })
        end
    },
}
