package.preload.ale = function()
  local plugin_path = vim.fn.stdpath('data') .. '/site/pack/pckr/opt/ale/lua/ale/init.lua'
  return dofile(plugin_path)
end

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

vim.g.ale_linters = {
  python = { "pylsp", "ruff", "flake8", "pylint" },
}
vim.g.ale_enabled = 0

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
