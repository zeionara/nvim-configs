local o = vim.opt

o.number = true
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.spell = true
o.spelllang = en_US
o.autoindent = true

o.cursorline = true
o.colorcolumn = '200'

o.so = 999

vim.cmd('set omnifunc=lsp#omnifunc')
