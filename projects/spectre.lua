vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        pylint = {
          enabled = true,
          args = {
            '--disable=C0114',
            '--disable=C0115',
            '--disable=C0116',
          }
        },
        flake8 = {
          enabled = true,
          ignore = {
            'E251',
            'W504'
          }
        },
        pyflakes = {
          enabled = true
        },
        pydocstyle = {
          enabled = false
        },
        black = {
          enabled = true
        },
        autopep8 = {
          enabled = true
        },
        pycodestyle = {
          enabled = true,
          maxLineLength = 200,
          ignore = {
            'E251',
            'W504'
          }
        },
        mccabe = {
          enabled = true
        },
        jedi_completion = {
          enabled = true
        },
        jedi_hover = {
          enabled = true
        },
        jedi_references = {
          enabled = true
        },
        jedi_signature_help = {
          enabled = true
        },
        jedi_symbols = {
          enabled = true
        },
        rope_completion = {
          enabled = true
        },
        ruff = {
          enabled = true,
          formatEnabled = true,
          lineLength = 200,
          preview = true
        }
      }
    }
  }
})

-- pip install python-lsp-server[all] python-lsp-ruff

vim.lsp.enable('pylsp')
