-- To install ale run script from the github repo https://github.com/dense-analysis/ale#installation

local g = vim.g

-- vim.cmd("let b:ale_linters = {'cpp': ['clangd']}")
g.ale_cpp_cc_options = '-std=c++20 -I $HOME/randeer/randeer'
g.ale_linters_ignore = {
    r = {'languageserver'},
    python = {'mypy'}
}
g.ale_r_lintr_options = "linters_with_defaults(line_length_linter(200), commented_code_linter(NULL))" -- configuration docs: https://lintr.r-lib.org/articles/editors.html
g.ale_enabled = true
g.ale_python_flake8_options="--ignore=E251"
g.ale_python_pylint_options="-d C0103,C0114,C0115,C0116"
-- vim.cmd("let g:ale_cpp_cc_options = '-std=c++20 -I $HOME/randeer/randeer'")
-- vim.cmd("let g:ale_cpp_clangd_options = '-std=c++20 -I $HOME/randeer/randeer'")
