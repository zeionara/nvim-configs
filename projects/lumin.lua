vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        flake8 = { enabled = true },
        pyflakes = { enabled = true },
        pydocstyle = { enabled = true, ignore = { 'D100', 'D101', 'D102', 'D103', 'D107' } },
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
