require('lspconfig').elixirls.setup({
  -- cmd = { '/usr/share/elixir-ls/language_server.sh' },
  cmd = { string.format('/home/%s/elixir-ls/build/language_server.sh', os.getenv('USER')) },
  -- cmd = { '/home/zeio/.local/share/vim-lsp-settings/servers/elixir-ls/language_server.sh' },
  -- capabilities = capabilities,
  -- settings = {
  --   elixirLS = {
  --     -- I choose to disable dialyzer for personal reasons, but
  --     -- I would suggest you also disable it unless you are well
  --     -- aquainted with dialzyer and know how to use it.
  --     -- dialyzerEnabled = false,
  --     -- I also choose to turn off the auto dep fetching feature.
  --     -- It often get's into a weird state that requires deleting
  --     -- the .elixir_ls directory and restarting your editor.
  --     -- fetchDeps = false
  --   }
  -- }
})
