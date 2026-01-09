vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        pylint = {
	  enabled = true
	},
        flake8 = { enabled = true },
        pyflakes = { enabled = true },
        pydocstyle = { enabled = false },
        black = { enabled = true },
        autopep8 = { enabled = true },
        pycodestyle = {
          maxLineLength = 200
        },
	mccabe = {
	    enabled = true
	},
	-- Enable jedi for better completion and diagnostics
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
	-- More detailed diagnostics
	rope_completion = {
	    enabled = true
	},
        ruff = {
          enabled = true,  -- Enable the plugin
          -- formatEnabled = true,  -- Enable formatting using ruffs formatter
          -- extendSelect = { "I" },  -- Rules that are additionally used by ruff
          -- extendIgnore = { "C90" },  -- Rules that are additionally ignored by ruff
          -- format = { "I" },  -- Rules that are marked as fixable by ruff that should be fixed when running textDocument/formatting
          -- severities = { ["D212"] = "I" },  -- Optional table of rules where a custom severity is desired
          -- unsafeFixes = false,  -- Whether or not to offer unsafe fixes as code actions. Ignored with the "Fix All" action
          -- unfixable = { "F401" }, -- Rules that are excluded when checking the code actions (including the "Fix All" action)

          -- -- Rules that are ignored when a pyproject.toml or ruff.toml is present:
          -- lineLength = 88,  -- Line length to pass to ruff checking and formatting
          -- exclude = { "__about__.py" },  -- Files to be excluded by ruff checking
          -- select = { "F" },  -- Rules to be enabled by ruff
          -- ignore = { "D210" },  -- Rules to be ignored by ruff
          -- perFileIgnores = { ["__init__.py"] = "CPY001" },  -- Rules that should be ignored for specific files
          -- preview = false,  -- Whether to enable the preview style linting and formatting.
          -- targetVersion = "py310",  -- The minimum python version to target (applies for both linting and formatting).
        }
      }
    }
  }
  -- on_attach = function(client, bufnr)
  --   -- Enable diagnostics
  --   vim.diagnostic.enable(bufnr)
  -- end
})

-- vim.lsp.config('ruff', {
--   init_options = {
--     settings = {
--       -- Ruff language server settings go here
--     }
--   }
-- })

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

vim.lsp.enable('pylsp')
-- vim.lsp.enable('pylyzer')
-- vim.lsp.enable('ruff')
