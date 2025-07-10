local M = {}

local function expand_path(path)
    if path:sub(1,1) == "~" then
        return os.getenv("HOME") .. path:sub(2)
    end
    return path
end

local function config()
    local width = math.min(math.floor(vim.o.columns * 0.8), 64)
    local height = math.floor(vim.o.lines * 0.8)

    return{
        relative = "editor",
        width = width,
        height = height,
        col = 1,
        row = 1,
        border = "single"
    }
end

local function open_floating_file(target_file)
    local expanded_path = expand_path(target_file)

    if vim.fn.filereadable(expanded_path) == 0 then
        vim.notify("todo file does not exist at: " .. expanded_path, vim.log.levels.ERROR)
        return
    end

    local buf = vim.fn.bufnr(expanded_path, true) -- :h builtin-functions -- search bufnr

    if buf == -1 then
        buf = vim.api.nvim_create_buf(false, false)
        vim.aip.nvim_buf_set_name(buf, expanded_path)
    end

    -- disable swp file
    vim.bo[buf].swapfile = false

    local win = vim.api.nvim_open_win(buf, true, config())
end

local function setup_user_commands(opts)
    local target_file = opts.target_file or "todo.md"
    vim.api.nvim_create_user_command("Td", function()
        open_floating_file(target_file)
    end, {})
end

M.setup = function(opts)
    setup_user_commands(opts)
end

return M
