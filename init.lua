require('vim-options')
require('plugins')

require('lualine').setup{
    options = { theme  = 'seoul256' }
}

require('nvim-projectconfig').setup()

-- require('lspconfig').pylsp.setup{
--   settings = {
--     pylsp = {
--       plugins = {
--         flake8 = { enabled = true },
--         pyflakes = { enabled = true },
--         pydocstyle = { enabled = false },
--         black = { enabled = false },
--         autopep8 = { enabled = false },
--         pycodestyle = {
--           ignore = { 'E251', 'W504' },
--           maxLineLength = 200
--         }
--       }
--     }
--   }
-- }

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- require('lspconfig').elixirls.setup({
--   -- cmd = { '/usr/share/elixir-ls/language_server.sh' },
--   cmd = { '/home/zeio/elixir-ls/build/language_server.sh' },
--   -- cmd = { '/home/zeio/.local/share/vim-lsp-settings/servers/elixir-ls/language_server.sh' },
--   -- capabilities = capabilities,
--   -- settings = {
--   --   elixirLS = {
--   --     -- I choose to disable dialyzer for personal reasons, but
--   --     -- I would suggest you also disable it unless you are well
--   --     -- aquainted with dialzyer and know how to use it.
--   --     -- dialyzerEnabled = false,
--   --     -- I also choose to turn off the auto dep fetching feature.
--   --     -- It often get's into a weird state that requires deleting
--   --     -- the .elixir_ls directory and restarting your editor.
--   --     -- fetchDeps = false
--   --   }
--   -- }
-- })

-- require('lspconfig').clangd.setup{}

require "lsp_signature".setup()

vim.cmd('colorscheme nordfox')
