vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        flake8 = {
            enabled = true,
            ignore = { 'E251' },
        },
        pyflakes = { enabled = true },
        pydocstyle = {
            ignore = { 'D100', 'D103' },
            enabled = true
        },
        black = { enabled = true },
        autopep8 = { enabled = true },
        pycodestyle = {
          ignore = { 'E251', 'W504' },
          maxLineLength = 200
        }
      }
    }
  }
})

vim.lsp.enable('pylsp')
