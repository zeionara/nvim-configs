-- package.path = package.path .. ";../lua/?.lua"

local util = require("util")

require('lspconfig').elixirls.setup({
    cmd = { util.path_join(os.getenv('ELIXIR_LS_ROOT'), 'language_server.sh') }
})
