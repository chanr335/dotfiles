                return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "buffers",
			separator_style = "slant",
			diagnostics = "nvim_lsp", -- Show LSP diagnostics in the bufferline
		    always_show_bufferline = false, -- Keep bufferline visible
			offsets = {
				{
					filetype = "NvimTree",
                    text = "File Explorer",
					text_align = "center",
                    highlight = "Directory",
					separator = true
				},
			},
		},
	},
}
