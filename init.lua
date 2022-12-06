require('vim-options')
require('plugins')

require('lualine').setup{
    options = { theme  = 'seoul256' }
}

require('nvim-projectconfig').setup()
require("lsp_signature").setup()

vim.cmd('colorscheme nordfox')
