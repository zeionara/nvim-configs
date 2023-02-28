require('vim-options')
require('keymap')
require('plugins')
require('ale')

require('commands')

require('lualine').setup{
    options = { theme  = 'horizon' }
}

require('nvim-projectconfig').setup()
require("lsp_signature").setup()

vim.cmd('colorscheme terafox')
