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

vim.diagnostic.config({
  float = true,
  jump = {
    float = true,
    wrap = true
  },
  severity_sort = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  virtual_line = true,
  virtual_text = true
})
