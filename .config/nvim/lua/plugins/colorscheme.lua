return {
  { "ficcdaf/ashen.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("colorscheme ashen")

        vim.api.nvim_set_hl(0, "Normal", { bg = "#000000"})
        -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
        -- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#212121" })
        -- vim.api.nvim_set_hl(0, "Comment", { fg = "#747474" })
    end
  },
}
