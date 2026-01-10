set number
set autochdir
set autoindent

set tabstop=2
set shiftwidth=2
set expandtab

set cursorline
set colorcolumn=200
set so=999

set spell
set spelllang=en_us
set t_Co=256

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prabirshrestha/vim-lsp'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
colorscheme tokyonight

let g:airline_theme='night_owl'
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts = 1

let g:ale_enabled = 0
nmap <C-K> :ALENext<cr>

" let g:lsp_log_file = expand('~/vim-lsp.log')
let g:line_length = 200

" au User lsp_setup call lsp#register_server({
"     \ 'name': 'pylsp',
"     \ 'cmd': {server_info->['pylsp']},
"     \ 'allowlist': ['python'],
"     \ })

if executable('pylsp')
  " pip install python-language-server
  au User lsp_setup call lsp#register_server({
      \ 'name': 'pylsp',
      \ 'cmd': {server_info->['pylsp']},
      \ 'allowlist': ['python'],
      \ 'workspace_config': {
      \   'pylsp': {
      \       'configurationSources': ['pycodestyle', 'flake8'],
      \       'plugins': {
      \           'pylint': {'enabled': v:true},
      \           'mccabre': {'enabled': v:true},
      \           'jedi_completion': {'enabled': v:true},
      \           'jedi_hover': {'enabled': v:true},
      \           'jedi_references': {'enabled': v:true},
      \           'jedi_signature_help': {'enabled': v:true},
      \           'jedi_symbols': {'enabled': v:true},
      \           'rope_completion': {'enabled': v:true},
      \           'ruff': {
      \                'enabled': v:true,
      \                'formatEnabled': v:true,
      \                'lineLength': g:line_length,
      \                'preview': v:true
      \           },
      \           'flake8': {
      \               'enabled': v:true,
      \               'maxLineLength': g:line_length
      \           },
      \           'pyflakes': {'enabled': v:true},
      \           'pydocstyle': {'enabled': v:true},
      \           'pycodestyle': {
      \               'enabled': v:true,
      \               'maxLineLength': g:line_length,
      \               'ignore': [
      \                   'E251',
      \                   'W504',
      \               ]
      \           },
      \           'black': {'enable': v:true},
      \           'autopep8': {'enable': v:true},
      \       },
      \   },
      \ },
      \})
endif

if exists('+tagfunc')
    setlocal tagfunc=lsp#tagfunc
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

inoremap <C-n> <C-x><C-o>
inoremap <expr> <CR> pumvisible() ? "\<C-y>\<Esc>" : "\<CR>"
