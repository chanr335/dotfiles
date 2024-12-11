return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      -- python = { "isort", "black" },
      -- rust = { "rustfmt", lsp_format = "fallback" },
      -- javascript = { "prettierd", "prettier", stop_after_first = true },
    },
  },
  config = function()
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        require("conform").format({ bufnr = args.buf })
      end,
    })
  end,
}

