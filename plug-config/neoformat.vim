 augroup fmt
	 autocmd!
	 " let blacklist = ['javascript']
	 " autocmd bufwritepre * if index(blacklist, &ft) < 0 | undojoin | Neoformat
	  "autocmd BufWritePre *  undojoin | Neoformat
	  autocmd BufWritePre *  call NeoformatRunAutoformat()
 augroup END

let g:neoformat_python_autopep8 = {
            \ 'exe': 'autopep8',
            \ 'args': ['-i','--max-line-length 120'],
            \ 'replace': 1, 
            \ 'stdin': 0, 
            \ 'env': ["DEBUG=1"], 
            \ 'valid_exit_codes': [0, 23],
            \ 'no_append': 0,
            \ }

let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_javascript = ['prettier-eslint']

let g:neoformat_enable_auto_format = 0

function! g:NeoformatRunAutoformat()
    if g:neoformat_enable_auto_format
        execute 'try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry'
    endif
endfunction

function! g:NeoformatToggle()
    if g:neoformat_enable_auto_format
       let g:neoformat_enable_auto_format = 0
       echo "auto format disabled"
    else
       let g:neoformat_enable_auto_format = 1
       echo "auto format enabled"
    endif
endfunction

command! ToggleAutoFormat :call NeoformatToggle()




