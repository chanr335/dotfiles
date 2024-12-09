return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,         -- Make sure it loads immediately (not on demand)
    priority = 1000,      -- Ensure this plugin (and thus colorscheme) loads first
    config = function()
      -- Configure kanagawa, if desired
      require('kanagawa').setup({
	    compile = false,             -- enable compiling the colorscheme
	    undercurl = true,            -- enable undercurls
	    commentStyle = { italic = true },
	    functionStyle = {},
	    keywordStyle = { italic = true},
	    statementStyle = { bold = true },
	    typeStyle = {},
	    transparent = false,         -- do not set background color
	    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
	    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
	    colors = {                   -- add/modify theme and palette colors
		palette = {},
		theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
	    },
	    overrides = function(colors) -- add/modify highlights
		return {
			-- Normal = { bg = "#141414"},
					}
	    end,
	    theme = "wave",              -- Load "wave" theme when 'background' option is not set
	    background = {               -- map the value of 'background' option to a theme
		dark = "wave",           -- try "dragon" !
		light = "lotus"
	    },    
	})

      -- Apply the colorscheme
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
}

