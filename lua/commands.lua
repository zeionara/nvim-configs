vim.api.nvim_create_user_command(
    'DropTrailingSpaces',
    function(opts)
        local nlines = vim.api.nvim_buf_line_count(0)
        local lines = vim.api.nvim_buf_get_lines(0, 0, nlines, false)

        local updated_lines = {}

        for i, line in ipairs(lines) do
            updated_lines[i] = line:gsub('%s+$', '')
        end

        vim.api.nvim_buf_set_lines(0, 0, nlines, true, updated_lines)
    end,
    { nargs = 0 }
)
