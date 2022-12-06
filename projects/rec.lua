require('lspconfig').pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        flake8 = { enabled = true },
        pyflakes = { enabled = true },
        pydocstyle = { enabled = false },
        black = { enabled = false },
        autopep8 = { enabled = false },
        pycodestyle = {
          ignore = { 'E251', 'W504' },
          maxLineLength = 200
        }
      }
    }
  }
}
