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
vim.cmd('set mouse=')
vim.cmd('set nohlsearch')

-- vim.cmd('autocmd BufNewFile,BufReadPost * if &filetype == "python" | set indentkeys-=0# | endif')
-- vim.cmd('autocmd BufNewFile,BufReadPost * if &filetype == "yaml" | set expandtab shiftwidth=2 indentkeys-=0# | endif')
