return {
	-- Other plugins
	{
		"jbyuki/nabla.nvim",
		config = function()
			-- Optional: You can configure keybindings or other settings here
			vim.api.nvim_set_keymap(
				"n",
				"<leader>rn",
				":lua require('nabla').popup()<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},
}
