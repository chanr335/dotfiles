return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "slant",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          highlight = "Directory",
          separator = true,
        },
      },
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)

    -- Autocommand to dynamically hide/show Bufferline
    vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete", "BufEnter", "BufLeave" }, {
      callback = function()
        local buffers = vim.fn.getbufinfo({ buflisted = true })
        local visible_buffers = #buffers

        -- Only show Bufferline if more than one buffer is visible, or if not only NvimTree is open
        local nvim_tree_is_open = false
        for _, buf in ipairs(buffers) do
          if vim.bo[buf.bufnr].filetype == "NvimTree" then
            nvim_tree_is_open = true
          end
        end

        if visible_buffers > 1 or (visible_buffers == 1 and not nvim_tree_is_open) then
          vim.opt.showtabline = 2 -- Show Bufferline
        else
          vim.opt.showtabline = 0 -- Hide Bufferline
        end
      end,
    })
  end,
}

