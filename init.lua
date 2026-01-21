package.preload.ale = function()
  local plugin_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/ale/lua/ale/init.lua'
  return dofile(plugin_path)
end

require('vim-options')
require('keymap')
require('plugins')
require('config.ale')

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
