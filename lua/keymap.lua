function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<F7>', ':Files<CR>', { silent = true })
map('n', '<F8>', ':NERDTreeToggle<CR>', { silent = true })
vim.g.floaterm_keymap_toggle = '<F9>'
