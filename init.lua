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

-- local avante = require('avante')
-- local config = {
--   provider = "openai",
--
--   windows = {
--     ask = {
--       floating = true,
--       border = "rounded",
--       start_insert = true
--     }
--   }
-- }
-- avante.setup(config)

-- require('avante_lib').load()
-- local config = {
--   windows = {
--     input = {
--       border = "rounded",
--       width = 60,
--       height = 10,
--     },
--     output = {
--       border = "rounded",
--       width = 60,
--       height = 20,
--     },
--     ask = {
--       floating = true,
--       border = "rounded",
--       start_insert = true
--     }
--   }
-- }
-- local avante = require('avante')
-- avante.setup(config)

vim.cmd('colorscheme terafox')
