local keymap = vim.keymap -- for conciseness

vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- Autoformat on save
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format({
            async = false, -- Make it synchronous to ensure formatting finishes before save
        })
    end,
})

