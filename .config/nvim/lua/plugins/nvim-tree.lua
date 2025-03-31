return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("nvim-tree").setup({
			diagnostics = { enable = true },
			renderer = {
				icons = {
					show = {
						file = false,
						folder = false,
						folder_arrow = true,
						git = true,
						modified = true,
						hidden = false,
						diagnostics = false,
						bookmarks = false,
					},
				},
			},
			actions = { open_file = { quit_on_open = true } },
			filters = { dotfiles = false, custom = { "^.DS_Store$", "^\\.git$" } },
			git = { enable = true, ignore = false, timeout = 500 },
            view = {side = "right", width = 30},
		})
		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
	end,
}
