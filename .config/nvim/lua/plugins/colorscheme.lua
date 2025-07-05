return {
	{
        "savq/melange-nvim",
		lazy = false, -- Make sure it loads immediately (not on demand)
		priority = 1000, -- Ensure this plugin (and thus colorscheme) loads first
		config = function()
			vim.cmd("colorscheme melange")

            vim.api.nvim_set_hl(0, "Normal", { bg = "#000000"})
            -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#181616" })
            -- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#181616" })
            -- vim.api.nvim_set_hl(0, "Comment", { fg = "#747474" })
        end
    },
}
