return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "thin",
			diagnostics = "nvim_lsp", -- Show LSP diagnostics in the bufferline
			always_show_bufferline = true, -- Keep bufferline visible
			offsets = {
				{
					filetype = "NvimTree",
					text_align = "center",
					separator = true
				},
			},
		},
	},
}
