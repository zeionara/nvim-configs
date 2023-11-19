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

require('nightfox').setup({
  options = {
    transparent = true
  }
})

vim.cmd('colorscheme terafox')
