local M = {}

local function play_sound()
    local sound_path = {
        vim.fn.expand("~") .. "/dotfiles/.config/nvim/lua/koge/sounds/turbo.wav",
        -- vim.fn.expand("~") .. "/dotfiles/.config/nvim/lua/koge/sounds/test.wav",
    }
    local cmd = string.format("mpv --no-video --no-terminal %s &", sound_path[math.random(#sound_path)])
    os.execute(cmd)
end

function M.setup()
    vim.api.nvim_create_autocmd("BufWritePost", {
        pattern = "*",
        callback = function()
            play_sound()
        end,
    })
end

return M
