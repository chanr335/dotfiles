require("config.options")
require("config.keymaps")
require("config.lazy")
require("koge.todo").setup({
    target_file = "~/todo.md"
})

local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("warning: multiple different client offset_encodings")
        or msg:match("position_encoding param is required in vim.lsp.util.make_position_params") then
        return
    end

    notify(msg, ...)
end
