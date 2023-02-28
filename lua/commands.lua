-- local command = vim.cmd
-- 
-- command(
--     'command 
-- 
-- )

vim.api.nvim_create_user_command(
    'DropTrailingSpaces',
    function(opts)
        -- vim.cmd('1d')
        local linenr = vim.api.nvim_win_get_cursor(0)[1]
        local curline = vim.api.nvim_buf_get_lines(0, linenr - 1, linenr, false)[1]

        -- print(string.format("Current line [%d] has %d bytes", linenr, #curline))
        -- print(string.format("Current line: '%s'", curline:gsub('%s+$', '')))
        --
        local replaced = curline:gsub('%s+$', '')
        -- local replacement = {replaced}
        -- local replacement = {curline:gsub('%s+$', '')}
        -- vim.api.nvim_buf_set_lines(0, linenr - 1, linenr, true, {curline:gsub('%s+$', '')})
        -- vim.api.nvim_buf_set_lines(0, linenr - 1, linenr, true, replacement)
        vim.api.nvim_buf_set_lines(0, linenr - 1, linenr, true, {replaced})
        -- vim.api.setline(linenr, curline:gsub('%s+$', ''))
        -- print(#replacement)
    end,
    { nargs = 0 }
)
