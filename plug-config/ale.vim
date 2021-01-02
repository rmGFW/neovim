let g:ale_disable_lsp = 1
let g:ale_fixers = {
			\ 'javascript': ['eslint']
			\ }

let g:ale_linter_aliases = {'vue': ['vue', 'javascript','css']}
let g:ale_linters = {'vue': ['eslint', 'vls']}

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

