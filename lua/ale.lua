-- To install ale run script from the github repo https://github.com/dense-analysis/ale#installation

local g = vim.g

-- vim.cmd("let b:ale_linters = {'cpp': ['clangd']}")
g.ale_cpp_cc_options = '-std=c++20 -I $HOME/randeer/randeer'
-- vim.cmd("let g:ale_cpp_cc_options = '-std=c++20 -I $HOME/randeer/randeer'")
-- vim.cmd("let g:ale_cpp_clangd_options = '-std=c++20 -I $HOME/randeer/randeer'")
