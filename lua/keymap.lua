function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<M-f>', ':Files<CR>', { silent = true })
map('n', '<M-n>', ':NERDTreeToggle<CR>', { silent = true })
vim.g.floaterm_keymap_toggle = '<M-t>'
