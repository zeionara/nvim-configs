require('vim-options')
require('plugins')
require('ale')

require('lualine').setup{
    options = { theme  = 'horizon' }
}

require('nvim-projectconfig').setup()
require("lsp_signature").setup()

vim.cmd('colorscheme terafox')
